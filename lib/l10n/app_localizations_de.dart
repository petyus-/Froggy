// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Googles Wetterfrosch (Froggy)';

  @override
  String get settings => 'Einstellungen';

  @override
  String get resetToDefaults => 'Auf Standard zurücksetzen';

  @override
  String get resetSettingsTitle => 'Einstellungen zurücksetzen?';

  @override
  String get resetSettingsBody =>
      'Alle Einstellungen auf die Standardwerte zurücksetzen. Gespeicherte Orte bleiben erhalten.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get hidePreview => 'Vorschau ausblenden';

  @override
  String get showPreview => 'Vorschau anzeigen';

  @override
  String get sectionTiming => 'Zeitsteuerung';

  @override
  String get sectionOverlaySize => 'Overlay-Größe';

  @override
  String get sectionTextShadow => 'Textschatten';

  @override
  String get sectionDisplay => 'Anzeige';

  @override
  String get sectionDimming => 'Abdunkelung';

  @override
  String get sectionStatusIcons => 'Statussymbole';

  @override
  String get sectionKioskMode => 'Kiosk-Modus';

  @override
  String get sectionLauncher => 'Launcher';

  @override
  String get sectionLocation => 'Standort';

  @override
  String get sectionLanguage => 'Sprache';

  @override
  String get sectionAbout => 'Über';

  @override
  String get sectionUnits => 'Einheiten';

  @override
  String get sectionTimeFormat => 'Zeitformat';

  @override
  String get weatherRefresh => 'Wetteraktualisierung';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Szenenrotation';

  @override
  String get off => 'Aus';

  @override
  String get clockTextSize => 'Uhr- & Textgröße';

  @override
  String get showClock => 'Uhr anzeigen';

  @override
  String get showClockSubtitle => 'Uhrzeit unten';

  @override
  String get showDate => 'Datum anzeigen';

  @override
  String get showWeather => 'Wetter anzeigen';

  @override
  String get showWeatherSubtitle => 'Temperatur und Bedingungen';

  @override
  String get showLocation => 'Standort anzeigen';

  @override
  String get showLocationSubtitle => 'Ortsname oben';

  @override
  String get dimOff => 'Aus';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Benutzerdefiniert';

  @override
  String get level => 'Stärke';

  @override
  String get from => 'Von';

  @override
  String get to => 'Bis';

  @override
  String get showStatusIcons => 'Statussymbole anzeigen';

  @override
  String get wifi => 'WLAN';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Musik';

  @override
  String get showMusicTitle => 'Musiktitel anzeigen';

  @override
  String get showMusicTitleSubtitle =>
      'Titelname (benötigt Benachrichtigungszugriff)';

  @override
  String get kioskMode => 'Kiosk-Modus';

  @override
  String get kioskModeSubtitle =>
      'Daueranzeige für Geräte ohne Bildschirmschoner. Blendet die Einstellungsschaltfläche aus (Bildschirm lange drücken zum Wiederöffnen) und hält den Bildschirm wach.';

  @override
  String get homeApp => 'Start-App';

  @override
  String get isDefaultHomeApp => 'Froggy ist deine Standard-Start-App';

  @override
  String get setAsHomeApp =>
      'Froggy auf dem Startbildschirm anzeigen und deinen Launcher ersetzen';

  @override
  String get set => 'Festlegen';

  @override
  String get automaticLocation => 'Automatisch';

  @override
  String get automaticLocationSubtitle => 'Über Netzwerk / GPS ermitteln';

  @override
  String get remove => 'Entfernen';

  @override
  String get addLocation => 'Standort hinzufügen';

  @override
  String get swipeToSwitch => 'Zum Wechseln wischen';

  @override
  String get swipeGestureSubtitle => 'Geste auf dem Frosch';

  @override
  String get swipeLeftRight => 'Links / rechts';

  @override
  String get swipeUpDown => 'Auf / ab';

  @override
  String get switchLocations => 'Standorte wechseln';

  @override
  String get automaticRotationSubtitle => 'Automatische Rotation';

  @override
  String get manually => 'Manuell';

  @override
  String get withScene => 'Mit Szene';

  @override
  String get onATimer => 'Nach Timer';

  @override
  String get edgeArrows => 'Randpfeile';

  @override
  String get edgeArrowsSubtitle => 'Zurück-/Vorwärts-Tasten an den Seiten';

  @override
  String get locationRotation => 'Standortrotation';

  @override
  String get checkUpdatesOnStartup => 'Beim Start nach Updates suchen';

  @override
  String get checkForUpdates => 'Nach Updates suchen';

  @override
  String get checkFailed => 'Prüfung nicht möglich – versuche es später erneut';

  @override
  String updateAvailableVersion(String version) {
    return 'Update verfügbar: v$version';
  }

  @override
  String get upToDate => 'Du verwendest die neueste Version';

  @override
  String get downloadInstallUpdate => 'Update herunterladen & installieren';

  @override
  String get getLatestRelease => 'Neueste Version herunterladen';

  @override
  String get sourceCode => 'Quellcode';

  @override
  String get notificationAccess => 'Benachrichtigungszugriff';

  @override
  String get notificationAccessSubtitle =>
      'Zum Lesen des Titelnamens erforderlich';

  @override
  String get grant => 'Erlauben';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'Googles Wetterfrosch';

  @override
  String versionValue(String version) {
    return 'Version $version';
  }

  @override
  String get cityName => 'Stadtname';

  @override
  String get search => 'Suchen';

  @override
  String get noMatchesFound => 'Keine Treffer gefunden';

  @override
  String get searchFailed => 'Suche fehlgeschlagen – prüfe deine Verbindung';

  @override
  String get updateAvailable => 'Update verfügbar';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest ist verfügbar – du hast v$current.';
  }

  @override
  String get skip => 'Überspringen';

  @override
  String get later => 'Später';

  @override
  String get update => 'Aktualisieren';

  @override
  String get view => 'Ansehen';

  @override
  String get downloadingUpdate => 'Update wird heruntergeladen…';

  @override
  String get couldNotStartUpdate => 'Update konnte nicht gestartet werden';

  @override
  String get couldNotOpenLink =>
      'Link konnte auf diesem Gerät nicht geöffnet werden';

  @override
  String get couldNotStartUpdateAlt => 'Update konnte nicht gestartet werden';

  @override
  String get previousLocation => 'Vorheriger Standort';

  @override
  String get nextLocation => 'Nächster Standort';

  @override
  String get landscapeTitle => 'Froggy sieht im Querformat am besten aus';

  @override
  String get landscapeBody =>
      'Drehe dein Handy seitlich für die volle Ansicht.';

  @override
  String get gotIt => 'Verstanden';

  @override
  String get locationBlocked =>
      'Der Standort ist blockiert, daher ist dies deine ungefähre Umgebung. Erlaube den Standort im Browser und tippe dann auf „Erneut versuchen“.';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get dismiss => 'Schließen';

  @override
  String get systemLanguage => 'System (automatisch)';

  @override
  String get languageSubtitle => 'App-Sprache';

  @override
  String get wmoClear => 'Klar';

  @override
  String get wmoMainlyClear => 'Überwiegend klar';

  @override
  String get wmoPartlyCloudy => 'Teilweise bewölkt';

  @override
  String get wmoOvercast => 'Bedeckt';

  @override
  String get wmoFog => 'Nebel';

  @override
  String get wmoRimeFog => 'Reifnebel';

  @override
  String get wmoLightDrizzle => 'Leichter Nieselregen';

  @override
  String get wmoDrizzle => 'Nieselregen';

  @override
  String get wmoHeavyDrizzle => 'Starker Nieselregen';

  @override
  String get wmoFreezingDrizzle => 'Gefrierender Nieselregen';

  @override
  String get wmoLightRain => 'Leichter Regen';

  @override
  String get wmoRain => 'Regen';

  @override
  String get wmoHeavyRain => 'Starker Regen';

  @override
  String get wmoFreezingRain => 'Gefrierender Regen';

  @override
  String get wmoLightSnow => 'Leichter Schneefall';

  @override
  String get wmoSnow => 'Schnee';

  @override
  String get wmoHeavySnow => 'Starker Schneefall';

  @override
  String get wmoSnowGrains => 'Schneegriesel';

  @override
  String get wmoLightShowers => 'Leichte Schauer';

  @override
  String get wmoShowers => 'Schauer';

  @override
  String get wmoHeavyShowers => 'Heftige Schauer';

  @override
  String get wmoSnowShowers => 'Schneeschauer';

  @override
  String get wmoHeavySnowShowers => 'Heftige Schneeschauer';

  @override
  String get wmoThunderstorm => 'Gewitter';

  @override
  String get wmoThunderstormHail => 'Gewitter, Hagel';

  @override
  String get wmoUnknown => 'Unbekannt';

  @override
  String get hourlyChart => '24-Stunden-Diagramm';
}
