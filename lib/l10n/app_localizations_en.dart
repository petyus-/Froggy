// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Google\'s Weather Frog (Froggy)';

  @override
  String get settings => 'Settings';

  @override
  String get resetToDefaults => 'Reset to defaults';

  @override
  String get resetSettingsTitle => 'Reset settings?';

  @override
  String get resetSettingsBody =>
      'Restore all settings to defaults. Saved locations are kept.';

  @override
  String get cancel => 'Cancel';

  @override
  String get reset => 'Reset';

  @override
  String get hidePreview => 'Hide preview';

  @override
  String get showPreview => 'Show preview';

  @override
  String get sectionTiming => 'Timing';

  @override
  String get sectionOverlaySize => 'Overlay size';

  @override
  String get sectionTextShadow => 'Text shadow';

  @override
  String get sectionDisplay => 'Display';

  @override
  String get sectionDimming => 'Dimming';

  @override
  String get sectionStatusIcons => 'Status icons';

  @override
  String get sectionKioskMode => 'Kiosk mode';

  @override
  String get sectionLauncher => 'Launcher';

  @override
  String get sectionLocation => 'Location';

  @override
  String get sectionLanguage => 'Language';

  @override
  String get sectionAbout => 'About';

  @override
  String get sectionUnits => 'Units';

  @override
  String get sectionTimeFormat => 'Time format';

  @override
  String get weatherRefresh => 'Weather refresh';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Scene rotation';

  @override
  String get off => 'Off';

  @override
  String get clockTextSize => 'Clock & text size';

  @override
  String get showClock => 'Show clock';

  @override
  String get showClockSubtitle => 'Time at the bottom';

  @override
  String get showDate => 'Show date';

  @override
  String get showWeather => 'Show weather';

  @override
  String get showWeatherSubtitle => 'Temperature and conditions';

  @override
  String get showLocation => 'Show location';

  @override
  String get showLocationSubtitle => 'Place name at the top';

  @override
  String get dimOff => 'Off';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Custom';

  @override
  String get level => 'Level';

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get showStatusIcons => 'Show status icons';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Music';

  @override
  String get showMusicTitle => 'Show music title';

  @override
  String get showMusicTitleSubtitle => 'Track name (needs notification access)';

  @override
  String get kioskMode => 'Kiosk mode';

  @override
  String get kioskModeSubtitle =>
      'Always-on display for devices without a screensaver. Hides the settings button (long-press the screen to reopen) and keeps the screen on.';

  @override
  String get homeApp => 'Home app';

  @override
  String get isDefaultHomeApp => 'Froggy is your default home app';

  @override
  String get setAsHomeApp =>
      'Show Froggy on the home screen, replacing your launcher';

  @override
  String get set => 'Set';

  @override
  String get automaticLocation => 'Automatic';

  @override
  String get automaticLocationSubtitle => 'Detect from network / GPS';

  @override
  String get remove => 'Remove';

  @override
  String get addLocation => 'Add location';

  @override
  String get swipeToSwitch => 'Swipe to switch';

  @override
  String get swipeGestureSubtitle => 'Gesture on the frog';

  @override
  String get swipeLeftRight => 'Left / right';

  @override
  String get swipeUpDown => 'Up / down';

  @override
  String get switchLocations => 'Switch locations';

  @override
  String get automaticRotationSubtitle => 'Automatic rotation';

  @override
  String get manually => 'Manually';

  @override
  String get withScene => 'With scene';

  @override
  String get onATimer => 'On a timer';

  @override
  String get edgeArrows => 'Edge arrows';

  @override
  String get edgeArrowsSubtitle => 'Back / forward buttons at the sides';

  @override
  String get locationRotation => 'Location rotation';

  @override
  String get checkUpdatesOnStartup => 'Check for updates on startup';

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get checkFailed => 'Could not check — try again later';

  @override
  String updateAvailableVersion(String version) {
    return 'Update available: v$version';
  }

  @override
  String get upToDate => 'You\'re on the latest version';

  @override
  String get downloadInstallUpdate => 'Download & install update';

  @override
  String get getLatestRelease => 'Get the latest release';

  @override
  String get sourceCode => 'Source code';

  @override
  String get notificationAccess => 'Notification access';

  @override
  String get notificationAccessSubtitle => 'Needed to read the track title';

  @override
  String get grant => 'Grant';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'Google\'s Weather Frog';

  @override
  String versionValue(String version) {
    return 'Version $version';
  }

  @override
  String get cityName => 'City name';

  @override
  String get search => 'Search';

  @override
  String get noMatchesFound => 'No matches found';

  @override
  String get searchFailed => 'Search failed — check your connection';

  @override
  String get updateAvailable => 'Update available';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest is available — you have v$current.';
  }

  @override
  String get skip => 'Skip';

  @override
  String get later => 'Later';

  @override
  String get update => 'Update';

  @override
  String get view => 'View';

  @override
  String get downloadingUpdate => 'Downloading update…';

  @override
  String get couldNotStartUpdate => 'Could not start the update';

  @override
  String get couldNotOpenLink => 'Couldn\'t open the link on this device';

  @override
  String get couldNotStartUpdateAlt => 'Couldn\'t start the update';

  @override
  String get previousLocation => 'Previous location';

  @override
  String get nextLocation => 'Next location';

  @override
  String get landscapeTitle => 'Froggy looks best in landscape';

  @override
  String get landscapeBody => 'Rotate your phone sideways for the full view.';

  @override
  String get gotIt => 'Got it';

  @override
  String get locationBlocked =>
      'Location is blocked, so this is your approximate area. Allow location in your browser, then Retry.';

  @override
  String get retry => 'Retry';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get systemLanguage => 'System (auto)';

  @override
  String get languageSubtitle => 'App language';

  @override
  String get wmoClear => 'Clear';

  @override
  String get wmoMainlyClear => 'Mainly clear';

  @override
  String get wmoPartlyCloudy => 'Partly cloudy';

  @override
  String get wmoOvercast => 'Overcast';

  @override
  String get wmoFog => 'Fog';

  @override
  String get wmoRimeFog => 'Rime fog';

  @override
  String get wmoLightDrizzle => 'Light drizzle';

  @override
  String get wmoDrizzle => 'Drizzle';

  @override
  String get wmoHeavyDrizzle => 'Heavy drizzle';

  @override
  String get wmoFreezingDrizzle => 'Freezing drizzle';

  @override
  String get wmoLightRain => 'Light rain';

  @override
  String get wmoRain => 'Rain';

  @override
  String get wmoHeavyRain => 'Heavy rain';

  @override
  String get wmoFreezingRain => 'Freezing rain';

  @override
  String get wmoLightSnow => 'Light snow';

  @override
  String get wmoSnow => 'Snow';

  @override
  String get wmoHeavySnow => 'Heavy snow';

  @override
  String get wmoSnowGrains => 'Snow grains';

  @override
  String get wmoLightShowers => 'Light showers';

  @override
  String get wmoShowers => 'Showers';

  @override
  String get wmoHeavyShowers => 'Heavy showers';

  @override
  String get wmoSnowShowers => 'Snow showers';

  @override
  String get wmoHeavySnowShowers => 'Heavy snow showers';

  @override
  String get wmoThunderstorm => 'Thunderstorm';

  @override
  String get wmoThunderstormHail => 'Thunderstorm, hail';

  @override
  String get wmoUnknown => 'Unknown';

  @override
  String get hourlyChart => '24-hour chart';

  @override
  String get alwaysShowFrog => 'Always show the frog';

  @override
  String get moodCaption => 'Frog mood caption';

  @override
  String get moodLabel => 'Frog';

  @override
  String get moodMorningSunny => 'stretching';

  @override
  String get moodMorningCloudy => 'waking up';

  @override
  String get moodMorningHazy => 'enjoying the mist';

  @override
  String get moodMorningRainy => 'singing in the rain';

  @override
  String get moodMorningSnowy => 'catching snowflakes';

  @override
  String get moodDaySunny => 'sunbathing';

  @override
  String get moodDayCloudy => 'having a picnic';

  @override
  String get moodDayHazy => 'daydreaming';

  @override
  String get moodDayRainy => 'rain dancing';

  @override
  String get moodDaySnowy => 'having a snowball fight';

  @override
  String get moodSunsetSunny => 'watching the sunset';

  @override
  String get moodSunsetCloudy => 'watching the sunset';

  @override
  String get moodSunsetHazy => 'watching the sunset';

  @override
  String get moodSunsetRainy => 'listening to raindrops';

  @override
  String get moodSunsetSnowy => 'keeping warm';

  @override
  String get moodNightSunny => 'stargazing';

  @override
  String get moodNightCloudy => 'dreaming';

  @override
  String get moodNightHazy => 'dreaming';

  @override
  String get moodNightRainy => 'dozing to the rain';

  @override
  String get moodNightSnowy => 'sleeping snugly';

  @override
  String get moodNightAwakeSunny => 'stargazing';

  @override
  String get moodNightAwakeCloudy => 'on a night picnic';

  @override
  String get moodNightAwakeHazy => 'moon-gazing';

  @override
  String get moodNightAwakeRainy => 'dancing in the night rain';

  @override
  String get moodNightAwakeSnowy => 'playing in the night snow';
}
