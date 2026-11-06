import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/weather.dart';

/// Bottom-right pill showing what the frog is doing, based on the current
/// day part and weather condition.
class MoodCaption extends StatelessWidget {
  const MoodCaption({
    super.key,
    required this.dayPart,
    required this.condition,
    this.alwaysShowFrog = false,
    this.shadows = const [],
  });

  final DayPart dayPart;
  final WeatherCondition condition;

  /// When the frog is forced visible at night it plays outdoors, so
  /// sleep-themed night phrases would be wrong; use awake ones instead.
  final bool alwaysShowFrog;
  final List<Shadow> shadows;

  String _activity(AppLocalizations l10n, DayPart p, WeatherCondition c) {
    switch (p) {
      case DayPart.morning:
        switch (c) {
          case WeatherCondition.sunny:
            return l10n.moodMorningSunny;
          case WeatherCondition.cloudy:
            return l10n.moodMorningCloudy;
          case WeatherCondition.hazy:
            return l10n.moodMorningHazy;
          case WeatherCondition.rainy:
            return l10n.moodMorningRainy;
          case WeatherCondition.snowy:
            return l10n.moodMorningSnowy;
        }
      case DayPart.day:
        switch (c) {
          case WeatherCondition.sunny:
            return l10n.moodDaySunny;
          case WeatherCondition.cloudy:
            return l10n.moodDayCloudy;
          case WeatherCondition.hazy:
            return l10n.moodDayHazy;
          case WeatherCondition.rainy:
            return l10n.moodDayRainy;
          case WeatherCondition.snowy:
            return l10n.moodDaySnowy;
        }
      case DayPart.sunset:
        switch (c) {
          case WeatherCondition.sunny:
            return l10n.moodSunsetSunny;
          case WeatherCondition.cloudy:
            return l10n.moodSunsetCloudy;
          case WeatherCondition.hazy:
            return l10n.moodSunsetHazy;
          case WeatherCondition.rainy:
            return l10n.moodSunsetRainy;
          case WeatherCondition.snowy:
            return l10n.moodSunsetSnowy;
        }
      case DayPart.night:
        if (alwaysShowFrog) {
          switch (c) {
            case WeatherCondition.sunny:
              return l10n.moodNightAwakeSunny;
            case WeatherCondition.cloudy:
              return l10n.moodNightAwakeCloudy;
            case WeatherCondition.hazy:
              return l10n.moodNightAwakeHazy;
            case WeatherCondition.rainy:
              return l10n.moodNightAwakeRainy;
            case WeatherCondition.snowy:
              return l10n.moodNightAwakeSnowy;
          }
        }
        switch (c) {
          case WeatherCondition.sunny:
            return l10n.moodNightSunny;
          case WeatherCondition.cloudy:
            return l10n.moodNightCloudy;
          case WeatherCondition.hazy:
            return l10n.moodNightHazy;
          case WeatherCondition.rainy:
            return l10n.moodNightRainy;
          case WeatherCondition.snowy:
            return l10n.moodNightSnowy;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return const SizedBox.shrink();
    final text = _activity(l10n, dayPart, condition);
    // Fixed size, larger than the date line (~24px on the 480x320 kiosk).
    const fontSize = 28.0;
    return IgnorePointer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.45),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          text,
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            shadows: shadows,
          ),
        ),
      ),
    );
  }
}
