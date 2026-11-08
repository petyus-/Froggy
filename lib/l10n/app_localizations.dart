import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_it.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ro.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hu'),
    Locale('it'),
    Locale('nl'),
    Locale('pl'),
    Locale('ro')
  ];

  /// Application title
  ///
  /// In en, this message translates to:
  /// **'Google\'s Weather Frog (Froggy)'**
  String get appTitle;

  /// Settings screen title and tooltip
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Tooltip for the reset button
  ///
  /// In en, this message translates to:
  /// **'Reset to defaults'**
  String get resetToDefaults;

  /// Title of the reset confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Reset settings?'**
  String get resetSettingsTitle;

  /// Body of the reset confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Restore all settings to defaults. Saved locations are kept.'**
  String get resetSettingsBody;

  /// Generic cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Reset confirmation button
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Tooltip to hide the settings preview
  ///
  /// In en, this message translates to:
  /// **'Hide preview'**
  String get hidePreview;

  /// Tooltip to show the settings preview
  ///
  /// In en, this message translates to:
  /// **'Show preview'**
  String get showPreview;

  /// Timing settings section title
  ///
  /// In en, this message translates to:
  /// **'Timing'**
  String get sectionTiming;

  /// Overlay size settings section title
  ///
  /// In en, this message translates to:
  /// **'Overlay size'**
  String get sectionOverlaySize;

  /// Text shadow settings section title
  ///
  /// In en, this message translates to:
  /// **'Text shadow'**
  String get sectionTextShadow;

  /// Display settings section title
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get sectionDisplay;

  /// Dimming settings section title
  ///
  /// In en, this message translates to:
  /// **'Dimming'**
  String get sectionDimming;

  /// Status icons settings section title
  ///
  /// In en, this message translates to:
  /// **'Status icons'**
  String get sectionStatusIcons;

  /// Kiosk mode settings section title
  ///
  /// In en, this message translates to:
  /// **'Kiosk mode'**
  String get sectionKioskMode;

  /// Launcher settings section title
  ///
  /// In en, this message translates to:
  /// **'Launcher'**
  String get sectionLauncher;

  /// Location settings section title
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get sectionLocation;

  /// Language settings section title
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get sectionLanguage;

  /// About settings section title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get sectionAbout;

  /// Units settings section title
  ///
  /// In en, this message translates to:
  /// **'Units'**
  String get sectionUnits;

  /// Time format settings section title
  ///
  /// In en, this message translates to:
  /// **'Time format'**
  String get sectionTimeFormat;

  /// Weather refresh interval label
  ///
  /// In en, this message translates to:
  /// **'Weather refresh'**
  String get weatherRefresh;

  /// Value in minutes
  ///
  /// In en, this message translates to:
  /// **'{count} min'**
  String minutesValue(int count);

  /// Scene rotation interval label
  ///
  /// In en, this message translates to:
  /// **'Scene rotation'**
  String get sceneRotation;

  /// Disabled state
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// Overlay scale label
  ///
  /// In en, this message translates to:
  /// **'Clock & text size'**
  String get clockTextSize;

  /// Toggle to show the clock
  ///
  /// In en, this message translates to:
  /// **'Show clock'**
  String get showClock;

  /// Show clock toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Time at the bottom'**
  String get showClockSubtitle;

  /// Toggle to show the date
  ///
  /// In en, this message translates to:
  /// **'Show date'**
  String get showDate;

  /// Toggle to show the weather
  ///
  /// In en, this message translates to:
  /// **'Show weather'**
  String get showWeather;

  /// Show weather toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Temperature and conditions'**
  String get showWeatherSubtitle;

  /// Toggle to show the location name
  ///
  /// In en, this message translates to:
  /// **'Show location'**
  String get showLocation;

  /// Show location toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Place name at the top'**
  String get showLocationSubtitle;

  /// Dimming mode: off
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get dimOff;

  /// Dimming mode: automatic
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get dimAuto;

  /// Dimming mode: scheduled
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get dimCustom;

  /// Dim level label
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get level;

  /// Dim schedule start label
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// Dim schedule end label
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// Toggle to show status icons
  ///
  /// In en, this message translates to:
  /// **'Show status icons'**
  String get showStatusIcons;

  /// Wi-Fi toggle label
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi'**
  String get wifi;

  /// Bluetooth toggle label
  ///
  /// In en, this message translates to:
  /// **'Bluetooth'**
  String get bluetooth;

  /// Music toggle label
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get music;

  /// Toggle to show the music track title
  ///
  /// In en, this message translates to:
  /// **'Show music title'**
  String get showMusicTitle;

  /// Show music title toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Track name (needs notification access)'**
  String get showMusicTitleSubtitle;

  /// Kiosk mode toggle label
  ///
  /// In en, this message translates to:
  /// **'Kiosk mode'**
  String get kioskMode;

  /// Kiosk mode toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Always-on display for devices without a screensaver. Hides the settings button (long-press the screen to reopen) and keeps the screen on.'**
  String get kioskModeSubtitle;

  /// Launcher home app tile title
  ///
  /// In en, this message translates to:
  /// **'Home app'**
  String get homeApp;

  /// Subtitle when Froggy is the default home app
  ///
  /// In en, this message translates to:
  /// **'Froggy is your default home app'**
  String get isDefaultHomeApp;

  /// Subtitle when Froggy is not the default home app
  ///
  /// In en, this message translates to:
  /// **'Show Froggy on the home screen, replacing your launcher'**
  String get setAsHomeApp;

  /// Button to open the home app picker
  ///
  /// In en, this message translates to:
  /// **'Set'**
  String get set;

  /// Automatic location mode label
  ///
  /// In en, this message translates to:
  /// **'Automatic'**
  String get automaticLocation;

  /// Automatic location mode subtitle
  ///
  /// In en, this message translates to:
  /// **'Detect from network / GPS'**
  String get automaticLocationSubtitle;

  /// Tooltip to remove a saved location
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// Add location action and screen title
  ///
  /// In en, this message translates to:
  /// **'Add location'**
  String get addLocation;

  /// Location swipe gesture setting label
  ///
  /// In en, this message translates to:
  /// **'Swipe to switch'**
  String get swipeToSwitch;

  /// Location swipe gesture setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Gesture on the frog'**
  String get swipeGestureSubtitle;

  /// Horizontal swipe option
  ///
  /// In en, this message translates to:
  /// **'Left / right'**
  String get swipeLeftRight;

  /// Vertical swipe option
  ///
  /// In en, this message translates to:
  /// **'Up / down'**
  String get swipeUpDown;

  /// Location rotation setting label
  ///
  /// In en, this message translates to:
  /// **'Switch locations'**
  String get switchLocations;

  /// Location rotation setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Automatic rotation'**
  String get automaticRotationSubtitle;

  /// Location rotation: manually
  ///
  /// In en, this message translates to:
  /// **'Manually'**
  String get manually;

  /// Location rotation: with scene
  ///
  /// In en, this message translates to:
  /// **'With scene'**
  String get withScene;

  /// Location rotation: on a timer
  ///
  /// In en, this message translates to:
  /// **'On a timer'**
  String get onATimer;

  /// Location edge arrows toggle label
  ///
  /// In en, this message translates to:
  /// **'Edge arrows'**
  String get edgeArrows;

  /// Location edge arrows toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Back / forward buttons at the sides'**
  String get edgeArrowsSubtitle;

  /// Location rotation interval label
  ///
  /// In en, this message translates to:
  /// **'Location rotation'**
  String get locationRotation;

  /// Toggle to check for updates on startup
  ///
  /// In en, this message translates to:
  /// **'Check for updates on startup'**
  String get checkUpdatesOnStartup;

  /// Check for updates tile title
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get checkForUpdates;

  /// Update check failed message
  ///
  /// In en, this message translates to:
  /// **'Could not check — try again later'**
  String get checkFailed;

  /// Update available status with version
  ///
  /// In en, this message translates to:
  /// **'Update available: v{version}'**
  String updateAvailableVersion(String version);

  /// No update available message
  ///
  /// In en, this message translates to:
  /// **'You\'re on the latest version'**
  String get upToDate;

  /// Download and install update tile title
  ///
  /// In en, this message translates to:
  /// **'Download & install update'**
  String get downloadInstallUpdate;

  /// Open the latest release page tile title
  ///
  /// In en, this message translates to:
  /// **'Get the latest release'**
  String get getLatestRelease;

  /// Source code tile title
  ///
  /// In en, this message translates to:
  /// **'Source code'**
  String get sourceCode;

  /// Notification access tile title
  ///
  /// In en, this message translates to:
  /// **'Notification access'**
  String get notificationAccess;

  /// Notification access tile subtitle
  ///
  /// In en, this message translates to:
  /// **'Needed to read the track title'**
  String get notificationAccessSubtitle;

  /// Button to grant notification access
  ///
  /// In en, this message translates to:
  /// **'Grant'**
  String get grant;

  /// About tile app name
  ///
  /// In en, this message translates to:
  /// **'Froggy'**
  String get froggy;

  /// About tile app description
  ///
  /// In en, this message translates to:
  /// **'Google\'s Weather Frog'**
  String get googlesWeatherFrog;

  /// Version label
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String versionValue(String version);

  /// City name input hint
  ///
  /// In en, this message translates to:
  /// **'City name'**
  String get cityName;

  /// Search tooltip
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Empty geocoding search result message
  ///
  /// In en, this message translates to:
  /// **'No matches found'**
  String get noMatchesFound;

  /// Geocoding search failure message
  ///
  /// In en, this message translates to:
  /// **'Search failed — check your connection'**
  String get searchFailed;

  /// Update dialog title
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get updateAvailable;

  /// Update dialog body
  ///
  /// In en, this message translates to:
  /// **'Froggy v{latest} is available — you have v{current}.'**
  String updateAvailableDetails(String latest, String current);

  /// Skip this update button
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Remind me later button
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// Start update button
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// View release button
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// Update download started snackbar
  ///
  /// In en, this message translates to:
  /// **'Downloading update…'**
  String get downloadingUpdate;

  /// Update download failed snackbar
  ///
  /// In en, this message translates to:
  /// **'Could not start the update'**
  String get couldNotStartUpdate;

  /// Failed to open URL snackbar
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the link on this device'**
  String get couldNotOpenLink;

  /// Update install failed snackbar (about section)
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start the update'**
  String get couldNotStartUpdateAlt;

  /// Tooltip for the previous location arrow
  ///
  /// In en, this message translates to:
  /// **'Previous location'**
  String get previousLocation;

  /// Tooltip for the next location arrow
  ///
  /// In en, this message translates to:
  /// **'Next location'**
  String get nextLocation;

  /// Rotate hint title
  ///
  /// In en, this message translates to:
  /// **'Froggy looks best in landscape'**
  String get landscapeTitle;

  /// Rotate hint body
  ///
  /// In en, this message translates to:
  /// **'Rotate your phone sideways for the full view.'**
  String get landscapeBody;

  /// Rotate hint dismiss button
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// Web location permission warning
  ///
  /// In en, this message translates to:
  /// **'Location is blocked, so this is your approximate area. Allow location in your browser, then Retry.'**
  String get locationBlocked;

  /// Retry button
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Dismiss tooltip
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// Follow the system language option
  ///
  /// In en, this message translates to:
  /// **'System (auto)'**
  String get systemLanguage;

  /// Language setting subtitle
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get languageSubtitle;

  /// WMO code 0
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get wmoClear;

  /// WMO code 1
  ///
  /// In en, this message translates to:
  /// **'Mainly clear'**
  String get wmoMainlyClear;

  /// WMO code 2
  ///
  /// In en, this message translates to:
  /// **'Partly cloudy'**
  String get wmoPartlyCloudy;

  /// WMO code 3
  ///
  /// In en, this message translates to:
  /// **'Overcast'**
  String get wmoOvercast;

  /// WMO code 45
  ///
  /// In en, this message translates to:
  /// **'Fog'**
  String get wmoFog;

  /// WMO code 48
  ///
  /// In en, this message translates to:
  /// **'Rime fog'**
  String get wmoRimeFog;

  /// WMO code 51
  ///
  /// In en, this message translates to:
  /// **'Light drizzle'**
  String get wmoLightDrizzle;

  /// WMO code 53
  ///
  /// In en, this message translates to:
  /// **'Drizzle'**
  String get wmoDrizzle;

  /// WMO code 55
  ///
  /// In en, this message translates to:
  /// **'Heavy drizzle'**
  String get wmoHeavyDrizzle;

  /// WMO codes 56, 57
  ///
  /// In en, this message translates to:
  /// **'Freezing drizzle'**
  String get wmoFreezingDrizzle;

  /// WMO code 61
  ///
  /// In en, this message translates to:
  /// **'Light rain'**
  String get wmoLightRain;

  /// WMO code 63
  ///
  /// In en, this message translates to:
  /// **'Rain'**
  String get wmoRain;

  /// WMO code 65
  ///
  /// In en, this message translates to:
  /// **'Heavy rain'**
  String get wmoHeavyRain;

  /// WMO codes 66, 67
  ///
  /// In en, this message translates to:
  /// **'Freezing rain'**
  String get wmoFreezingRain;

  /// WMO code 71
  ///
  /// In en, this message translates to:
  /// **'Light snow'**
  String get wmoLightSnow;

  /// WMO code 73
  ///
  /// In en, this message translates to:
  /// **'Snow'**
  String get wmoSnow;

  /// WMO code 75
  ///
  /// In en, this message translates to:
  /// **'Heavy snow'**
  String get wmoHeavySnow;

  /// WMO code 77
  ///
  /// In en, this message translates to:
  /// **'Snow grains'**
  String get wmoSnowGrains;

  /// WMO code 80
  ///
  /// In en, this message translates to:
  /// **'Light showers'**
  String get wmoLightShowers;

  /// WMO code 81
  ///
  /// In en, this message translates to:
  /// **'Showers'**
  String get wmoShowers;

  /// WMO code 82
  ///
  /// In en, this message translates to:
  /// **'Heavy showers'**
  String get wmoHeavyShowers;

  /// WMO code 85
  ///
  /// In en, this message translates to:
  /// **'Snow showers'**
  String get wmoSnowShowers;

  /// WMO code 86
  ///
  /// In en, this message translates to:
  /// **'Heavy snow showers'**
  String get wmoHeavySnowShowers;

  /// WMO code 95
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm'**
  String get wmoThunderstorm;

  /// WMO codes 96, 99
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm, hail'**
  String get wmoThunderstormHail;

  /// Unknown WMO code
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get wmoUnknown;

  /// Toggle to show the 24-hour temperature chart
  ///
  /// In en, this message translates to:
  /// **'24-hour chart'**
  String get hourlyChart;

  /// Prefer scene animations where the frog is visible
  ///
  /// In en, this message translates to:
  /// **'Always show the frog'**
  String get alwaysShowFrog;

  /// Toggle to show the frog mood/activity caption in the bottom-right corner
  ///
  /// In en, this message translates to:
  /// **'Frog mood caption'**
  String get moodCaption;

  /// Toggle to dim the scene and chart at night (23:00-06:00)
  ///
  /// In en, this message translates to:
  /// **'Night dimming'**
  String get nightDimming;

  /// Prefix label of the mood caption, e.g. 'Frog'
  ///
  /// In en, this message translates to:
  /// **'Frog'**
  String get moodLabel;

  /// Frog mood activity for morning / sunny
  ///
  /// In en, this message translates to:
  /// **'stretching'**
  String get moodMorningSunny;

  /// Frog mood activity for morning / cloudy
  ///
  /// In en, this message translates to:
  /// **'waking up'**
  String get moodMorningCloudy;

  /// Frog mood activity for morning / hazy
  ///
  /// In en, this message translates to:
  /// **'enjoying the mist'**
  String get moodMorningHazy;

  /// Frog mood activity for morning / rainy
  ///
  /// In en, this message translates to:
  /// **'singing in the rain'**
  String get moodMorningRainy;

  /// Frog mood activity for morning / snowy
  ///
  /// In en, this message translates to:
  /// **'catching snowflakes'**
  String get moodMorningSnowy;

  /// Frog mood activity for day / sunny
  ///
  /// In en, this message translates to:
  /// **'sunbathing'**
  String get moodDaySunny;

  /// Frog mood activity for day / cloudy
  ///
  /// In en, this message translates to:
  /// **'having a picnic'**
  String get moodDayCloudy;

  /// Frog mood activity for day / hazy
  ///
  /// In en, this message translates to:
  /// **'daydreaming'**
  String get moodDayHazy;

  /// Frog mood activity for day / rainy
  ///
  /// In en, this message translates to:
  /// **'rain dancing'**
  String get moodDayRainy;

  /// Frog mood activity for day / snowy
  ///
  /// In en, this message translates to:
  /// **'having a snowball fight'**
  String get moodDaySnowy;

  /// Frog mood activity for sunset / sunny
  ///
  /// In en, this message translates to:
  /// **'watching the sunset'**
  String get moodSunsetSunny;

  /// Frog mood activity for sunset / cloudy
  ///
  /// In en, this message translates to:
  /// **'watching the sunset'**
  String get moodSunsetCloudy;

  /// Frog mood activity for sunset / hazy
  ///
  /// In en, this message translates to:
  /// **'watching the sunset'**
  String get moodSunsetHazy;

  /// Frog mood activity for sunset / rainy
  ///
  /// In en, this message translates to:
  /// **'listening to raindrops'**
  String get moodSunsetRainy;

  /// Frog mood activity for sunset / snowy
  ///
  /// In en, this message translates to:
  /// **'keeping warm'**
  String get moodSunsetSnowy;

  /// Frog mood activity for night / sunny
  ///
  /// In en, this message translates to:
  /// **'stargazing'**
  String get moodNightSunny;

  /// Frog mood activity for night / cloudy
  ///
  /// In en, this message translates to:
  /// **'dreaming'**
  String get moodNightCloudy;

  /// Frog mood activity for night / hazy
  ///
  /// In en, this message translates to:
  /// **'dreaming'**
  String get moodNightHazy;

  /// Frog mood activity for night / rainy
  ///
  /// In en, this message translates to:
  /// **'dozing to the rain'**
  String get moodNightRainy;

  /// Frog mood activity for night / snowy
  ///
  /// In en, this message translates to:
  /// **'sleeping snugly'**
  String get moodNightSnowy;

  /// Awake night frog activity for night / sunny (used when alwaysShowFrog is on)
  ///
  /// In en, this message translates to:
  /// **'stargazing'**
  String get moodNightAwakeSunny;

  /// Awake night frog activity for night / cloudy (used when alwaysShowFrog is on)
  ///
  /// In en, this message translates to:
  /// **'on a night picnic'**
  String get moodNightAwakeCloudy;

  /// Awake night frog activity for night / hazy (used when alwaysShowFrog is on)
  ///
  /// In en, this message translates to:
  /// **'moon-gazing'**
  String get moodNightAwakeHazy;

  /// Awake night frog activity for night / rainy (used when alwaysShowFrog is on)
  ///
  /// In en, this message translates to:
  /// **'dancing in the night rain'**
  String get moodNightAwakeRainy;

  /// Awake night frog activity for night / snowy (used when alwaysShowFrog is on)
  ///
  /// In en, this message translates to:
  /// **'playing in the night snow'**
  String get moodNightAwakeSnowy;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'de',
        'en',
        'es',
        'fr',
        'hu',
        'it',
        'nl',
        'pl',
        'ro'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hu':
      return AppLocalizationsHu();
    case 'it':
      return AppLocalizationsIt();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'ro':
      return AppLocalizationsRo();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
