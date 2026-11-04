import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../l10n/app_localizations.dart';
import '../models/settings.dart';
import '../services/geocoding_service.dart';
import '../services/system_status_service.dart';
import '../services/update_service.dart';
import '../services/web_launch.dart';
import '../services/window_service.dart';
import '../state/settings_controller.dart';
import '../state/weather_controller.dart';
import 'froggy_view.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    required this.settings,
    required this.weather,
  });

  final SettingsController settings;
  final WeatherController weather;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool? _showPreview;

  Future<void> _confirmReset() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(l10n.resetSettingsTitle),
          content: Text(l10n.resetSettingsBody),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l10n.cancel),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(l10n.reset),
            ),
          ],
        );
      },
    );
    if (ok == true) widget.settings.resetToDefaults();
  }

  @override
  Widget build(BuildContext context) {
    final isTv =
        MediaQuery.navigationModeOf(context) == NavigationMode.directional;
    final showPreview = _showPreview ?? !isTv;
    final l10n = AppLocalizations.of(context)!;
    final preview = _Preview(settings: widget.settings, weather: widget.weather);
    final controls = _Controls(settings: widget.settings, isTv: isTv);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        actions: [
          IconButton(
            icon: const Icon(Icons.restart_alt),
            tooltip: l10n.resetToDefaults,
            onPressed: _confirmReset,
          ),
          IconButton(
            autofocus: true,
            icon: Icon(showPreview ? Icons.visibility_off : Icons.visibility),
            tooltip: showPreview ? l10n.hidePreview : l10n.showPreview,
            onPressed: () => setState(() => _showPreview = !showPreview),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, c) {
            if (!showPreview) return controls;
            if (c.maxWidth > c.maxHeight) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(12), child: preview)),
                  Expanded(child: controls),
                ],
              );
            }
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: AspectRatio(aspectRatio: 2, child: preview),
                ),
                Expanded(child: controls),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Preview extends StatelessWidget {
  const _Preview({required this.settings, required this.weather});

  final SettingsController settings;
  final WeatherController weather;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: RepaintBoundary(
        child: ListenableBuilder(
          listenable: Listenable.merge([weather, settings]),
          builder: (context, _) => FroggyView(
            scene: weather.scene,
            weather: weather.weather,
            settings: settings.settings,
            locationName: weather.locationName,
            showTopBar: false,
          ),
        ),
      ),
    );
  }
}

class _Controls extends StatelessWidget {
  const _Controls({required this.settings, this.isTv = false});

  final SettingsController settings;
  final bool isTv;

  static const _languageOptions = <(String, String)>[
    ('en', 'English'),
    ('de', 'Deutsch'),
    ('fr', 'Français'),
    ('it', 'Italiano'),
    ('es', 'Español'),
    ('pl', 'Polski'),
    ('ro', 'Română'),
    ('nl', 'Nederlands'),
    ('hu', 'Magyar'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settings,
      builder: (context, _) {
        final s = settings.settings;
        final l10n = AppLocalizations.of(context)!;
        return ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          scrollCacheExtent:
              isTv ? const ScrollCacheExtent.viewport(6) : null,
          children: [
            LayoutBuilder(
              builder: (context, c) {
                final units = _unitsBlock(context, s);
                final time = _timeBlock(context, s);
                if (c.maxWidth >= 360) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: units),
                      Expanded(child: time),
                    ],
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [units, time],
                );
              },
            ),
            const SizedBox(height: 8),
            _sectionTitle(context, l10n.sectionTiming),
            ListTile(
              dense: true,
              title: Text(l10n.weatherRefresh),
              trailing: Text(l10n.minutesValue(s.refreshMinutes)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Slider(
                value: s.refreshMinutes.toDouble(),
                min: 5,
                max: 120,
                divisions: 23,
                label: l10n.minutesValue(s.refreshMinutes),
                onChanged: (v) => settings.setRefreshMinutes(v.round()),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(l10n.sceneRotation),
              trailing: Text(
                  s.rotateMinutes == 0 ? l10n.off : l10n.minutesValue(s.rotateMinutes)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Slider(
                value: s.rotateMinutes.toDouble(),
                min: 0,
                max: 60,
                divisions: 60,
                label: s.rotateMinutes == 0 ? l10n.off : l10n.minutesValue(s.rotateMinutes),
                onChanged: (v) => settings.setRotateMinutes(v.round()),
              ),
            ),
            const Divider(),
            _sectionTitle(context, l10n.sectionOverlaySize),
            ListTile(
              dense: true,
              title: Text(l10n.clockTextSize),
              trailing: Text('${(s.overlayScale * 100).round()}%'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Slider(
                value: s.overlayScale,
                min: 0.5,
                max: 1.5,
                divisions: 10,
                label: '${(s.overlayScale * 100).round()}%',
                onChanged: settings.setOverlayScale,
              ),
            ),
            const Divider(),
            _sectionTitle(context, l10n.sectionTextShadow),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Slider(
                value: s.textShadow,
                min: 0,
                max: 1,
                divisions: 10,
                label: '${(s.textShadow * 100).round()}%',
                onChanged: settings.setTextShadow,
              ),
            ),
            const Divider(),
            _sectionTitle(context, l10n.sectionDisplay),
            SwitchListTile(
              title: Text(l10n.showClock),
              subtitle: Text(l10n.showClockSubtitle),
              value: s.showClock,
              onChanged: settings.setShowClock,
            ),
            SwitchListTile(
              title: Text(l10n.showDate),
              value: s.showDate,
              onChanged: settings.setShowDate,
            ),
            SwitchListTile(
              title: Text(l10n.showWeather),
              subtitle: Text(l10n.showWeatherSubtitle),
              value: s.showWeather,
              onChanged: settings.setShowWeather,
            ),
            SwitchListTile(
              title: Text(l10n.showLocation),
              subtitle: Text(l10n.showLocationSubtitle),
              value: s.showLocation,
              onChanged: settings.setShowLocation,
            ),
            const Divider(),
            _sectionTitle(context, l10n.sectionDimming),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SegmentedButton<DimMode>(
                  segments: [
                    ButtonSegment(
                        value: DimMode.off, label: Text(l10n.dimOff)),
                    ButtonSegment(
                        value: DimMode.auto, label: Text(l10n.dimAuto)),
                    ButtonSegment(
                        value: DimMode.scheduled, label: Text(l10n.dimCustom)),
                  ],
                  selected: {s.dimMode},
                  onSelectionChanged: (set) => settings.setDimMode(set.first),
                ),
              ),
            ),
            if (s.dimMode != DimMode.off)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(l10n.level),
                    Expanded(
                      child: Slider(
                        value: s.nightDim,
                        min: 0,
                        max: 1,
                        divisions: 10,
                        label: '${(s.nightDim * 100).round()}%',
                        onChanged: settings.setNightDim,
                      ),
                    ),
                  ],
                ),
              ),
            if (s.dimMode == DimMode.scheduled) ...[
              ListTile(
                dense: true,
                leading: const Icon(Icons.bedtime_outlined),
                title: Text(l10n.from),
                trailing: Text(_fmtTime(context, s.dimStart)),
                onTap: () =>
                    _pickTime(context, s.dimStart, settings.setDimStart),
              ),
              ListTile(
                dense: true,
                leading: const Icon(Icons.wb_sunny_outlined),
                title: Text(l10n.to),
                trailing: Text(_fmtTime(context, s.dimEnd)),
                onTap: () => _pickTime(context, s.dimEnd, settings.setDimEnd),
              ),
            ],
            if (!kIsWeb) ...[
            const Divider(),
            _sectionTitle(context, l10n.sectionStatusIcons),
            SwitchListTile(
              title: Text(l10n.showStatusIcons),
              value: s.showStatus,
              onChanged: settings.setShowStatus,
            ),
            if (s.showStatus) ...[
              SwitchListTile(
                title: Text(l10n.wifi),
                value: s.showWifi,
                onChanged: settings.setShowWifi,
              ),
              SwitchListTile(
                title: Text(l10n.bluetooth),
                value: s.showBluetooth,
                onChanged: settings.setShowBluetooth,
              ),
              SwitchListTile(
                title: Text(l10n.music),
                value: s.showMusic,
                onChanged: settings.setShowMusic,
              ),
              if (s.showMusic)
                SwitchListTile(
                  title: Text(l10n.showMusicTitle),
                  subtitle: Text(l10n.showMusicTitleSubtitle),
                  value: s.showMusicTitle,
                  onChanged: settings.setShowMusicTitle,
                ),
              if (s.showMusic && s.showMusicTitle)
                const _NotificationAccessTile(),
            ],
            const Divider(),
            _sectionTitle(context, l10n.sectionKioskMode),
            SwitchListTile(
              title: Text(l10n.kioskMode),
              subtitle: Text(l10n.kioskModeSubtitle),
              value: s.kioskMode,
              onChanged: settings.setKioskMode,
            ),
            const Divider(),
            _sectionTitle(context, l10n.sectionLauncher),
            const _LauncherTile(),
            ],
            const Divider(),
            _sectionTitle(context, l10n.sectionLocation),
            ListTile(
              leading: Icon(s.locationMode == LocationMode.automatic
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked),
              title: Text(l10n.automaticLocation),
              subtitle: Text(l10n.automaticLocationSubtitle),
              onTap: () => settings.setLocationMode(LocationMode.automatic),
            ),
            for (final loc in s.savedLocations)
              ListTile(
                leading: Icon(s.locationMode == LocationMode.manual &&
                        s.selected?.id == loc.id
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked),
                title: Text(loc.name),
                subtitle: loc.region == null ? null : Text(loc.region!),
                trailing: IconButton(
                  icon: const Icon(Icons.delete_outline),
                  tooltip: l10n.remove,
                  onPressed: () => settings.removeLocation(loc.id),
                ),
                onTap: () => settings.selectLocation(loc.id),
              ),
            ListTile(
              leading: const Icon(Icons.add_location_alt_outlined),
              title: Text(l10n.addLocation),
              onTap: () => _addLocation(context),
            ),
            if (s.canCycleLocations) ...[
              ListTile(
                title: Text(l10n.swipeToSwitch),
                subtitle: Text(l10n.swipeGestureSubtitle),
                trailing: DropdownButton<LocationSwipe>(
                  value: s.locationSwipe,
                  onChanged: (v) =>
                      v == null ? null : settings.setLocationSwipe(v),
                  items: [
                    DropdownMenuItem(
                      value: LocationSwipe.horizontal,
                      child: Text(l10n.swipeLeftRight),
                    ),
                    DropdownMenuItem(
                      value: LocationSwipe.vertical,
                      child: Text(l10n.swipeUpDown),
                    ),
                    DropdownMenuItem(
                      value: LocationSwipe.off,
                      child: Text(l10n.off),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(l10n.switchLocations),
                subtitle: Text(l10n.automaticRotationSubtitle),
                trailing: DropdownButton<LocationRotation>(
                  value: s.locationRotation,
                  onChanged: (v) =>
                      v == null ? null : settings.setLocationRotation(v),
                  items: [
                    DropdownMenuItem(
                      value: LocationRotation.off,
                      child: Text(l10n.manually),
                    ),
                    DropdownMenuItem(
                      value: LocationRotation.withScene,
                      child: Text(l10n.withScene),
                    ),
                    DropdownMenuItem(
                      value: LocationRotation.timed,
                      child: Text(l10n.onATimer),
                    ),
                  ],
                ),
              ),
              SwitchListTile(
                title: Text(l10n.edgeArrows),
                subtitle: Text(l10n.edgeArrowsSubtitle),
                value: s.showLocationArrows,
                onChanged: settings.setShowLocationArrows,
              ),
              if (s.locationRotation == LocationRotation.timed)
                ListTile(
                  title: Text(l10n.locationRotation),
                  trailing: DropdownButton<int>(
                    value: s.locationRotateMinutes,
                    onChanged: (v) =>
                        v == null ? null : settings.setLocationRotateMinutes(v),
                    items: const [1, 5, 10, 15, 30, 60]
                        .map((m) => DropdownMenuItem(
                              value: m,
                              child: Text('$m min'),
                            ))
                        .toList(),
                  ),
                ),
            ],
            const Divider(),
            _sectionTitle(context, l10n.sectionLanguage),
            ListTile(
              dense: true,
              title: Text(l10n.sectionLanguage),
              trailing: DropdownButton<String>(
                value: s.languageCode ?? '',
                onChanged: (v) =>
                    settings.setLanguageCode(v == null || v.isEmpty ? null : v),
                items: [
                  DropdownMenuItem(
                    value: '',
                    child: Text(l10n.systemLanguage),
                  ),
                  for (final e in _languageOptions)
                    DropdownMenuItem(value: e.$1, child: Text(e.$2)),
                ],
              ),
            ),
            const Divider(),
            _sectionTitle(context, l10n.sectionAbout),
            if (!kIsWeb)
              SwitchListTile(
                title: Text(l10n.checkUpdatesOnStartup),
                value: s.checkUpdatesOnStartup,
                onChanged: settings.setCheckUpdatesOnStartup,
              ),
            const _AboutSection(),
          ],
        );
      },
    );
  }

  Widget _unitsBlock(BuildContext context, Settings s) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle(context, AppLocalizations.of(context)!.sectionUnits),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SegmentedButton<TempUnit>(
                segments: const [
                  ButtonSegment(value: TempUnit.celsius, label: Text('°C')),
                  ButtonSegment(value: TempUnit.fahrenheit, label: Text('°F')),
                ],
                selected: {s.unit},
                onSelectionChanged: (set) => settings.setUnit(set.first),
              ),
            ),
          ),
        ],
      );

  Widget _timeBlock(BuildContext context, Settings s) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle(context, AppLocalizations.of(context)!.sectionTimeFormat),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SegmentedButton<ClockFormat>(
                segments: const [
                  ButtonSegment(value: ClockFormat.h24, label: Text('24h')),
                  ButtonSegment(value: ClockFormat.h12, label: Text('12h')),
                ],
                selected: {s.hourFormat},
                onSelectionChanged: (set) => settings.setClockFormat(set.first),
              ),
            ),
          ),
        ],
      );

  String _fmtTime(BuildContext context, int minutes) {
    final t = TimeOfDay(hour: minutes ~/ 60, minute: minutes % 60);
    return t.format(context);
  }

  Future<void> _pickTime(
      BuildContext context, int minutes, void Function(int) onPicked) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: minutes ~/ 60, minute: minutes % 60),
    );
    if (picked != null) onPicked(picked.hour * 60 + picked.minute);
  }

  Future<void> _addLocation(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => _AddLocationScreen(settings: settings),
    ));
  }

  Widget _sectionTitle(BuildContext context, String text) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
        child: Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                letterSpacing: 1.0,
              ),
        ),
      );
}

class _LauncherTile extends StatefulWidget {
  const _LauncherTile();

  @override
  State<_LauncherTile> createState() => _LauncherTileState();
}

class _LauncherTileState extends State<_LauncherTile>
    with WidgetsBindingObserver {
  bool _isDefault = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _check();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _check();
  }

  Future<void> _check() async {
    final d = await WindowService.isDefaultHome();
    if (mounted) setState(() => _isDefault = d);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: Icon(_isDefault ? Icons.home : Icons.home_outlined),
      title: Text(l10n.homeApp),
      subtitle: Text(_isDefault
          ? l10n.isDefaultHomeApp
          : l10n.setAsHomeApp),
      trailing: _isDefault
          ? null
          : TextButton(
              onPressed: WindowService.openHomeSettings,
              child: Text(l10n.set),
            ),
    );
  }
}

class _AboutSection extends StatefulWidget {
  const _AboutSection();

  @override
  State<_AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<_AboutSection> {
  final _service = UpdateService();
  String _version = '';
  bool _checking = false;
  String? _status;
  UpdateInfo? _update;

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  @override
  void dispose() {
    _service.dispose();
    super.dispose();
  }

  Future<void> _loadVersion() async {
    final v = await WindowService.appVersion();
    if (mounted) setState(() => _version = v ?? '');
  }

  Future<void> _check() async {
    setState(() {
      _checking = true;
      _status = null;
      _update = null;
    });
    final info = await _service.check(_version.isEmpty ? '0.0.0' : _version);
    if (!mounted) return;
    setState(() {
      _checking = false;
      if (info == null) {
        _status = AppLocalizations.of(context)!.checkFailed;
      } else if (info.updateAvailable) {
        _status = AppLocalizations.of(context)!
            .updateAvailableVersion(info.latestVersion);
        _update = info;
      } else {
        _status = AppLocalizations.of(context)!.upToDate;
      }
    });
  }

  Future<void> _install(UpdateInfo info) async {
    if (info.apkUrl == null) {
      _open(info.releaseUrl);
      return;
    }
    final ok = await WindowService.installUpdate(info.apkUrl!);
    if (mounted) {
      final l10n = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ok ? l10n.downloadingUpdate : l10n.couldNotStartUpdateAlt),
        ),
      );
    }
  }

  Future<void> _open(String url) async {
    final ok = kIsWeb
        ? await openExternalUrl(url)
        : await WindowService.openUrl(url);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content:
                Text(AppLocalizations.of(context)!.couldNotOpenLink)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
          children: [
            ListTile(
              leading: const SizedBox(
                width: 40,
                height: 40,
                child: Image(image: AssetImage('assets/app_icon.png')),
              ),
              title: Text(l10n.froggy),
              subtitle: Text(
                _version.isEmpty ? l10n.googlesWeatherFrog : l10n.versionValue(_version),
              ),
            ),
            if (!kIsWeb) ...[
              ListTile(
                leading: const Icon(Icons.system_update_outlined),
                title: Text(l10n.checkForUpdates),
            subtitle: _status == null ? null : Text(_status!),
            trailing: _checking
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : null,
            onTap: _checking ? null : _check,
          ),
          if (_update != null)
            ListTile(
              leading: const Icon(Icons.download_outlined),
              title: Text(_update!.apkUrl != null
                  ? l10n.downloadInstallUpdate
                  : l10n.getLatestRelease),
              onTap: () => _install(_update!),
            ),
        ],
        ListTile(
          leading: const Icon(Icons.code),
          title: Text(l10n.sourceCode),
          subtitle: const Text('github.com/R0rt1z2/Froggy'),
          onTap: () => _open(UpdateService.repoUrl),
        ),
      ],
    );
  }
}

class _NotificationAccessTile extends StatefulWidget {
  const _NotificationAccessTile();

  @override
  State<_NotificationAccessTile> createState() =>
      _NotificationAccessTileState();
}

class _NotificationAccessTileState extends State<_NotificationAccessTile>
    with WidgetsBindingObserver {
  final _service = SystemStatusService();
  bool _granted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _check();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _check();
  }

  Future<void> _check() async {
    final g = await _service.hasNotificationAccess();
    if (mounted) setState(() => _granted = g);
  }

  @override
  Widget build(BuildContext context) {
    if (_granted) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(Icons.notifications_off_outlined),
      title: Text(l10n.notificationAccess),
      subtitle: Text(l10n.notificationAccessSubtitle),
      trailing: TextButton(
        onPressed: _service.openNotificationAccess,
        child: Text(l10n.grant),
      ),
    );
  }
}

class _AddLocationScreen extends StatefulWidget {
  const _AddLocationScreen({required this.settings});

  final SettingsController settings;

  @override
  State<_AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<_AddLocationScreen> {
  final _geocoder = GeocodingService();
  final _field = TextEditingController();
  List<SavedLocation> _results = const [];
  bool _loading = false;
  String? _error;

  Future<void> _search() async {
    final q = _field.text.trim();
    if (q.isEmpty) return;
    FocusScope.of(context).unfocus();
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final results = await _geocoder.search(q);
      if (!mounted) return;
      setState(() {
        _results = results;
        _loading = false;
        if (results.isEmpty) _error = AppLocalizations.of(context)!.noMatchesFound;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = AppLocalizations.of(context)!.searchFailed;
      });
    }
  }

  @override
  void dispose() {
    _geocoder.dispose();
    _field.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.addLocation)),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: _field,
                autofocus: true,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.cityName,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    tooltip: AppLocalizations.of(context)!.search,
                    onPressed: _search,
                  ),
                ),
                onSubmitted: (_) => _search(),
              ),
            ),
            if (_loading)
              const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  _error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            Expanded(
              child: ListView(
                scrollCacheExtent:
                    MediaQuery.navigationModeOf(context) ==
                            NavigationMode.directional
                        ? const ScrollCacheExtent.viewport(6)
                        : null,
                children: [
                  for (final r in _results)
                    ListTile(
                      autofocus: r == _results.first,
                      title: Text(r.name),
                      subtitle: r.region == null ? null : Text(r.region!),
                      onTap: () {
                        widget.settings.addLocation(r);
                        Navigator.of(context).pop();
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
