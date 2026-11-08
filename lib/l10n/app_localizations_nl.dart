// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Google\'s Weerkikker (Froggy)';

  @override
  String get settings => 'Instellingen';

  @override
  String get resetToDefaults => 'Standaardwaarden herstellen';

  @override
  String get resetSettingsTitle => 'Instellingen herstellen?';

  @override
  String get resetSettingsBody =>
      'Alle instellingen naar de standaardwaarden terugzetten. Opgeslagen locaties blijven bewaard.';

  @override
  String get cancel => 'Annuleren';

  @override
  String get reset => 'Herstellen';

  @override
  String get hidePreview => 'Voorbeeld verbergen';

  @override
  String get showPreview => 'Voorbeeld tonen';

  @override
  String get sectionTiming => 'Timing';

  @override
  String get sectionOverlaySize => 'Overlaygrootte';

  @override
  String get sectionTextShadow => 'Tekstschaduw';

  @override
  String get sectionDisplay => 'Weergave';

  @override
  String get sectionDimming => 'Dimmen';

  @override
  String get sectionStatusIcons => 'Statuspictogrammen';

  @override
  String get sectionKioskMode => 'Kioskmodus';

  @override
  String get sectionLauncher => 'Launcher';

  @override
  String get sectionLocation => 'Locatie';

  @override
  String get sectionLanguage => 'Taal';

  @override
  String get sectionAbout => 'Over';

  @override
  String get sectionUnits => 'Eenheden';

  @override
  String get sectionTimeFormat => 'Tijdnotatie';

  @override
  String get weatherRefresh => 'Weeractualisering';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Scènerotatie';

  @override
  String get off => 'Uit';

  @override
  String get clockTextSize => 'Klok- en tekstgrootte';

  @override
  String get showClock => 'Klok tonen';

  @override
  String get showClockSubtitle => 'Tijd onderaan';

  @override
  String get showDate => 'Datum tonen';

  @override
  String get showWeather => 'Weer tonen';

  @override
  String get showWeatherSubtitle => 'Temperatuur en omstandigheden';

  @override
  String get showLocation => 'Locatie tonen';

  @override
  String get showLocationSubtitle => 'Plaatsnaam bovenaan';

  @override
  String get dimOff => 'Uit';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Aangepast';

  @override
  String get level => 'Niveau';

  @override
  String get from => 'Van';

  @override
  String get to => 'Tot';

  @override
  String get showStatusIcons => 'Statuspictogrammen tonen';

  @override
  String get wifi => 'Wifi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Muziek';

  @override
  String get showMusicTitle => 'Muziektitel tonen';

  @override
  String get showMusicTitleSubtitle => 'Titelnaam (vereist meldingstoegang)';

  @override
  String get kioskMode => 'Kioskmodus';

  @override
  String get kioskModeSubtitle =>
      'Altijd-aan-scherm voor apparaten zonder screensaver. Verbergt de instellingenknop (houd het scherm ingedrukt om opnieuw te openen) en houdt het scherm aan.';

  @override
  String get homeApp => 'Start-app';

  @override
  String get isDefaultHomeApp => 'Froggy is je standaard start-app';

  @override
  String get setAsHomeApp =>
      'Toon Froggy op het startscherm ter vervanging van je launcher';

  @override
  String get set => 'Instellen';

  @override
  String get automaticLocation => 'Automatisch';

  @override
  String get automaticLocationSubtitle => 'Bepalen via netwerk / GPS';

  @override
  String get remove => 'Verwijderen';

  @override
  String get addLocation => 'Locatie toevoegen';

  @override
  String get swipeToSwitch => 'Veeg om te wisselen';

  @override
  String get swipeGestureSubtitle => 'Veegbeweging op de kikker';

  @override
  String get swipeLeftRight => 'Links / rechts';

  @override
  String get swipeUpDown => 'Omhoog / omlaag';

  @override
  String get switchLocations => 'Locaties wisselen';

  @override
  String get automaticRotationSubtitle => 'Automatische rotatie';

  @override
  String get manually => 'Handmatig';

  @override
  String get withScene => 'Met scène';

  @override
  String get onATimer => 'Op tijdsinterval';

  @override
  String get edgeArrows => 'Randpijlen';

  @override
  String get edgeArrowsSubtitle => 'Terug / vooruit-knoppen aan de zijkanten';

  @override
  String get locationRotation => 'Locatierotatie';

  @override
  String get checkUpdatesOnStartup => 'Controleer bij opstarten op updates';

  @override
  String get checkForUpdates => 'Controleren op updates';

  @override
  String get checkFailed => 'Kon niet controleren — probeer het later opnieuw';

  @override
  String updateAvailableVersion(String version) {
    return 'Update beschikbaar: v$version';
  }

  @override
  String get upToDate => 'Je hebt de nieuwste versie';

  @override
  String get downloadInstallUpdate => 'Update downloaden & installeren';

  @override
  String get getLatestRelease => 'Nieuwste versie ophalen';

  @override
  String get sourceCode => 'Broncode';

  @override
  String get notificationAccess => 'Meldingstoegang';

  @override
  String get notificationAccessSubtitle => 'Nodig om de titelnaam te lezen';

  @override
  String get grant => 'Toestaan';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'Google\'s Weerkikker';

  @override
  String versionValue(String version) {
    return 'Versie $version';
  }

  @override
  String get cityName => 'Plaatsnaam';

  @override
  String get search => 'Zoeken';

  @override
  String get noMatchesFound => 'Geen resultaten gevonden';

  @override
  String get searchFailed => 'Zoeken mislukt — controleer je verbinding';

  @override
  String get updateAvailable => 'Update beschikbaar';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest is beschikbaar — je hebt v$current.';
  }

  @override
  String get skip => 'Overslaan';

  @override
  String get later => 'Later';

  @override
  String get update => 'Bijwerken';

  @override
  String get view => 'Bekijken';

  @override
  String get downloadingUpdate => 'Update wordt gedownload…';

  @override
  String get couldNotStartUpdate => 'Kon de update niet starten';

  @override
  String get couldNotOpenLink => 'Kon de link op dit apparaat niet openen';

  @override
  String get couldNotStartUpdateAlt => 'Kon de update niet starten';

  @override
  String get previousLocation => 'Vorige locatie';

  @override
  String get nextLocation => 'Volgende locatie';

  @override
  String get landscapeTitle => 'Froggy ziet er in liggende modus het best uit';

  @override
  String get landscapeBody =>
      'Draai je telefoon horizontaal voor het volledige beeld.';

  @override
  String get gotIt => 'Begrepen';

  @override
  String get locationBlocked =>
      'Locatie is geblokkeerd, dus dit is je benaderende omgeving. Sta locatie toe in je browser en tik daarna op Opnieuw.';

  @override
  String get retry => 'Opnieuw';

  @override
  String get dismiss => 'Sluiten';

  @override
  String get systemLanguage => 'Systeem (auto)';

  @override
  String get languageSubtitle => 'Apptaal';

  @override
  String get wmoClear => 'Helder';

  @override
  String get wmoMainlyClear => 'Vrijwel helder';

  @override
  String get wmoPartlyCloudy => 'Half bewolkt';

  @override
  String get wmoOvercast => 'Bewolkt';

  @override
  String get wmoFog => 'Mist';

  @override
  String get wmoRimeFog => 'Rijpmist';

  @override
  String get wmoLightDrizzle => 'Lichte motregen';

  @override
  String get wmoDrizzle => 'Motregen';

  @override
  String get wmoHeavyDrizzle => 'Stevige motregen';

  @override
  String get wmoFreezingDrizzle => 'Vriezende motregen';

  @override
  String get wmoLightRain => 'Lichte regen';

  @override
  String get wmoRain => 'Regen';

  @override
  String get wmoHeavyRain => 'Zware regen';

  @override
  String get wmoFreezingRain => 'Vriezende regen';

  @override
  String get wmoLightSnow => 'Lichte sneeuwval';

  @override
  String get wmoSnow => 'Sneeuw';

  @override
  String get wmoHeavySnow => 'Zware sneeuwval';

  @override
  String get wmoSnowGrains => 'Sneeuwkorrels';

  @override
  String get wmoLightShowers => 'Lichte buien';

  @override
  String get wmoShowers => 'Buien';

  @override
  String get wmoHeavyShowers => 'Zware buien';

  @override
  String get wmoSnowShowers => 'Sneeuwbuien';

  @override
  String get wmoHeavySnowShowers => 'Zware sneeuwbuien';

  @override
  String get wmoThunderstorm => 'Onweersbui';

  @override
  String get wmoThunderstormHail => 'Onweersbui, hagel';

  @override
  String get wmoUnknown => 'Onbekend';

  @override
  String get hourlyChart => '24-uurs grafiek';

  @override
  String get alwaysShowFrog => 'Kikker altijd tonen';

  @override
  String get moodCaption => 'Kikkerstemming';

  @override
  String get nightDimming => 'Nachtverduistering';

  @override
  String get moodLabel => 'Kikker';

  @override
  String get moodMorningSunny => 'rekt zich';

  @override
  String get moodMorningCloudy => 'wordt wakker';

  @override
  String get moodMorningHazy => 'geniet van de mist';

  @override
  String get moodMorningRainy => 'zingt in de regen';

  @override
  String get moodMorningSnowy => 'vangt sneeuwvlokken';

  @override
  String get moodDaySunny => 'zonnet';

  @override
  String get moodDayCloudy => 'picknickt';

  @override
  String get moodDayHazy => 'droomt';

  @override
  String get moodDayRainy => 'danst in de regen';

  @override
  String get moodDaySnowy => 'gooit sneeuwballen';

  @override
  String get moodSunsetSunny => 'kijkt naar de zonsondergang';

  @override
  String get moodSunsetCloudy => 'kijkt naar de zonsondergang';

  @override
  String get moodSunsetHazy => 'kijkt naar de zonsondergang';

  @override
  String get moodSunsetRainy => 'luistert naar de regen';

  @override
  String get moodSunsetSnowy => 'warmt zich';

  @override
  String get moodNightSunny => 'kijkt naar sterren';

  @override
  String get moodNightCloudy => 'droomt';

  @override
  String get moodNightHazy => 'droomt';

  @override
  String get moodNightRainy => 'doezelt in de regen';

  @override
  String get moodNightSnowy => 'slaapt knus';

  @override
  String get moodNightAwakeSunny => 'kijkt naar de sterren';

  @override
  String get moodNightAwakeCloudy => 'houdt een nachtpicknick';

  @override
  String get moodNightAwakeHazy => 'kijkt naar de maan';

  @override
  String get moodNightAwakeRainy => 'danst in de nachtregen';

  @override
  String get moodNightAwakeSnowy => 'speelt in de nachtsneeuw';
}
