import 'dart:async';
import 'dart:math';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '../models/settings.dart';
import '../models/weather.dart';
import '../services/asset_catalog.dart';
import 'foreground.dart';
import 'hourly_chart.dart';
import 'mood_caption.dart';
import 'overlay.dart';
import 'status_bar.dart';

class FroggyView extends StatelessWidget {
  const FroggyView({
    super.key,
    required this.scene,
    this.weather,
    this.settings = const Settings(),
    this.locationName,
    this.showOverlay = true,
    this.showTopBar = true,
    this.cornerGear = true,
    this.debugMode = false,
  });

  final SceneAssets? scene;
  final WeatherData? weather;
  final Settings settings;
  final String? locationName;
  final bool showOverlay;
  final bool showTopBar;

  /// Whether a settings gear button occupies the bottom-right corner above
  /// this view (non-kiosk layouts); the mood caption is lifted above it.
  final bool cornerGear;

  /// Debug capture mode: no overlay, no dimming — just the raw combo.
  final bool debugMode;

  static const _animationName = 'Hero-Action';

  static const _maxDecodeSize = 2048;
  static const _decodeBucket = 256;

  static int _decodeWidth(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final needed =
        max(size.width, size.height) * MediaQuery.devicePixelRatioOf(context);
    final bucketed = (needed / _decodeBucket).ceil() * _decodeBucket;
    return bucketed.clamp(_decodeBucket, _maxDecodeSize);
  }

  @override
  Widget build(BuildContext context) {
    final s = scene;
    final h = MediaQuery.sizeOf(context).height;
    final tv =
        MediaQuery.navigationModeOf(context) == NavigationMode.directional;
    final statusIcon =
        (h * 0.05).clamp(16.0, tv ? 20.0 : 26.0) * settings.overlayScale;
    final statusPad = (h * 0.06).clamp(16.0, tv ? 18.0 : 32.0);
    final shadows = settings.textShadows;
    final dayPart = weather?.dayPart ?? dayPartFor(DateTime.now(), null, null);
    final nightFactor = dayPart == DayPart.night
        ? 1.0
        : (dayPart == DayPart.sunset ? 0.5 : 0.0);
    final localTime = weather?.localTime ?? DateTime.now();
    final dim = debugMode ? 0.0 : settings.dimAt(nightFactor, localTime);
    final showLoc = settings.showLocation &&
        locationName != null &&
        locationName!.isNotEmpty;
    final overlay = showOverlay && !debugMode;
    final hasTopContent =
        showTopBar && ((!kIsWeb && settings.showStatus) || showLoc);
    final hasBottomContent = settings.showClock ||
        settings.showDate ||
        (settings.showWeather && weather != null);
    return ColoredBox(
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (s != null)
            Positioned.fill(
              child: RepaintBoundary(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  child: SizedBox.expand(
                    key: ValueKey(s.background),
                    child: Image.asset(
                      s.background,
                      fit: BoxFit.cover,
                      cacheWidth: _decodeWidth(context),
                      filterQuality: FilterQuality.medium,
                    ),
                  ),
                ),
              ),
            ),
          if (s != null)
            Positioned.fill(
              child: RepaintBoundary(
                child: _LoopingFrog(
                  key: ValueKey(s.frog),
                  asset: s.frog,
                  animation: _animationName,
                  loop: debugMode,
                ),
              ),
            ),
          if (overlay && hasTopContent)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: h * 0.34,
              child: IgnorePointer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (overlay && hasBottomContent)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: h * 0.45,
              child: IgnorePointer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.55),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (overlay) WeatherOverlay(weather: weather, settings: settings),
          if (overlay && settings.showHourlyChart)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: HourlyChartStrip(weather: weather),
            ),
          if (overlay && settings.showMoodCaption)
            Positioned(
              // Sits on the settings-gear bottom row: same bottom edge as the
              // gear, centered against its 28px icon, immediately to its left.
              // Pill heights ~52px (28px text + padding); shift down so its
              // vertical center sits on the 28px gear icon at bottom:statusPad.
              bottom: statusPad - 12,
              right: statusPad + (cornerGear ? 28.0 + 12.0 : 0.0),
              child: MoodCaption(
                dayPart: dayPart,
                condition: weather?.condition ?? WeatherCondition.cloudy,
                alwaysShowFrog: settings.alwaysShowFrog,
                shadows: shadows,
              ),
            ),
          if (overlay && hasTopContent)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(statusPad),
                child: SizedBox(
                  height: statusIcon * 1.5,
                  child: LayoutBuilder(
                    builder: (context, c) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: kIsWeb
                                  ? const SizedBox.shrink()
                                  : StatusBar(
                                      iconSize: statusIcon,
                                      showMusicTitle: settings.showMusicTitle,
                                      showWifi: settings.showStatus &&
                                          settings.showWifi,
                                      showBluetooth: settings.showStatus &&
                                          settings.showBluetooth,
                                      showMusic: settings.showStatus &&
                                          settings.showMusic,
                                      shadows: shadows,
                                    ),
                            ),
                          ),
                          if (showLoc)
                            Align(
                              alignment: Alignment.centerRight,
                              child: ConstrainedBox(
                                constraints:
                                    BoxConstraints(maxWidth: c.maxWidth * 0.4),
                                child: _LocationLabel(
                                  name: locationName!,
                                  size: statusIcon,
                                  shadows: shadows,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          if (dim > 0)
            Positioned.fill(
              child: IgnorePointer(
                child: ColoredBox(color: Colors.black.withValues(alpha: dim)),
              ),
            ),
        ],
      ),
    );
  }
}

class _LocationLabel extends StatelessWidget {
  const _LocationLabel({
    required this.name,
    required this.size,
    required this.shadows,
  });

  final String name;
  final double size;
  final List<Shadow> shadows;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.location_on,
            size: size, color: Colors.white, shadows: shadows),
        SizedBox(width: size * 0.2),
        Flexible(
          child: Text(
            name,
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: size,
              fontWeight: FontWeight.w500,
              shadows: shadows,
            ),
          ),
        ),
      ],
    );
  }
}

class _LoopingFrog extends StatefulWidget {
  const _LoopingFrog({
    super.key,
    required this.asset,
    required this.animation,
    this.loop = false,
  });

  final String asset;
  final String animation;

  /// When true the animation restarts immediately after it completes
  /// (debug capture mode) instead of waiting for a random idle gap.
  final bool loop;

  @override
  State<_LoopingFrog> createState() => _LoopingFrogState();
}

class _LoopingFrogState extends State<_LoopingFrog>
    with WidgetsBindingObserver, ForegroundAware<_LoopingFrog> {
  static final Random _rng = Random();

  String? _current;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _current = widget.animation;
  }

  void _scheduleNextPlay() {
    _timer?.cancel();
    if (!foreground) return;
    if (widget.loop) {
      // Debug capture: keep the animation running without idle gaps.
      _timer = Timer(const Duration(milliseconds: 16), () {
        if (!mounted) return;
        setState(() => _current = widget.animation);
      });
      return;
    }
    final gapMs = 2500 + _rng.nextInt(7500);
    _timer = Timer(Duration(milliseconds: gapMs), () {
      if (!mounted) return;
      setState(() => _current = widget.animation);
    });
  }

  void _onCompleted(String name) {
    if (!mounted) return;
    setState(() => _current = null);
    _scheduleNextPlay();
  }

  @override
  void onForegroundChanged(bool foreground) {
    if (!foreground) {
      _timer?.cancel();
      _timer = null;
    } else if (_current == null) {
      _scheduleNextPlay();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      widget.asset,
      alignment: Alignment.center,
      fit: BoxFit.cover,
      animation: _current,
      isPaused: !foreground,
      callback: _onCompleted,
    );
  }
}
