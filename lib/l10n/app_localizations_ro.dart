// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Broscuța Meteo Google (Froggy)';

  @override
  String get settings => 'Setări';

  @override
  String get resetToDefaults => 'Resetează la valorile implicite';

  @override
  String get resetSettingsTitle => 'Resetați setările?';

  @override
  String get resetSettingsBody =>
      'Restabilește toate setările la valorile implicite. Locațiile salvate sunt păstrate.';

  @override
  String get cancel => 'Anulează';

  @override
  String get reset => 'Resetează';

  @override
  String get hidePreview => 'Ascunde previzualizarea';

  @override
  String get showPreview => 'Afișează previzualizarea';

  @override
  String get sectionTiming => 'Temporizare';

  @override
  String get sectionOverlaySize => 'Dimensiune strat';

  @override
  String get sectionTextShadow => 'Umbră text';

  @override
  String get sectionDisplay => 'Afișare';

  @override
  String get sectionDimming => 'Întunecare';

  @override
  String get sectionStatusIcons => 'Pictograme de stare';

  @override
  String get sectionKioskMode => 'Mod kiosk';

  @override
  String get sectionLauncher => 'Lansator';

  @override
  String get sectionLocation => 'Locație';

  @override
  String get sectionLanguage => 'Limbă';

  @override
  String get sectionAbout => 'Despre';

  @override
  String get sectionUnits => 'Unități';

  @override
  String get sectionTimeFormat => 'Format oră';

  @override
  String get weatherRefresh => 'Actualizare meteo';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Rotirea scenelor';

  @override
  String get off => 'Dezactivat';

  @override
  String get clockTextSize => 'Dimensiune ceas și text';

  @override
  String get showClock => 'Afișează ceasul';

  @override
  String get showClockSubtitle => 'Ora jos';

  @override
  String get showDate => 'Afișează data';

  @override
  String get showWeather => 'Afișează vremea';

  @override
  String get showWeatherSubtitle => 'Temperatură și condiții';

  @override
  String get showLocation => 'Afișează locația';

  @override
  String get showLocationSubtitle => 'Numele locului sus';

  @override
  String get dimOff => 'Dezactivat';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Personalizat';

  @override
  String get level => 'Nivel';

  @override
  String get from => 'De la';

  @override
  String get to => 'Până la';

  @override
  String get showStatusIcons => 'Afișează pictogramele de stare';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Muzică';

  @override
  String get showMusicTitle => 'Afișează titlul melodiei';

  @override
  String get showMusicTitleSubtitle =>
      'Numele piesei (necesită acces la notificări)';

  @override
  String get kioskMode => 'Mod kiosk';

  @override
  String get kioskModeSubtitle =>
      'Ecran permanent pentru dispozitive fără screensaver. Ascunde butonul de setări (apăsați lung pe ecran pentru redeschidere) și menține ecranul aprins.';

  @override
  String get homeApp => 'Aplicația de pornire';

  @override
  String get isDefaultHomeApp =>
      'Froggy este aplicația dvs. de pornire implicită';

  @override
  String get setAsHomeApp =>
      'Afișează Froggy pe ecranul de pornire, înlocuind lansatorul';

  @override
  String get set => 'Setează';

  @override
  String get automaticLocation => 'Automat';

  @override
  String get automaticLocationSubtitle => 'Detectare din rețea / GPS';

  @override
  String get remove => 'Elimină';

  @override
  String get addLocation => 'Adaugă locație';

  @override
  String get swipeToSwitch => 'Glisează pentru schimbare';

  @override
  String get swipeGestureSubtitle => 'Gest pe broască';

  @override
  String get swipeLeftRight => 'Stânga / dreapta';

  @override
  String get swipeUpDown => 'Sus / jos';

  @override
  String get switchLocations => 'Schimbare locație';

  @override
  String get automaticRotationSubtitle => 'Rotire automată';

  @override
  String get manually => 'Manual';

  @override
  String get withScene => 'Odată cu scena';

  @override
  String get onATimer => 'La interval';

  @override
  String get edgeArrows => 'Săgeți laterale';

  @override
  String get edgeArrowsSubtitle => 'Butoanele înapoi / înainte pe laterale';

  @override
  String get locationRotation => 'Rotirea locațiilor';

  @override
  String get checkUpdatesOnStartup => 'Caută actualizări la pornire';

  @override
  String get checkForUpdates => 'Caută actualizări';

  @override
  String get checkFailed => 'Nu s-a putut verifica — încercați mai târziu';

  @override
  String updateAvailableVersion(String version) {
    return 'Actualizare disponibilă: v$version';
  }

  @override
  String get upToDate => 'Aveți cea mai recentă versiune';

  @override
  String get downloadInstallUpdate => 'Descarcă și instalează actualizarea';

  @override
  String get getLatestRelease => 'Obțineți ultima versiune';

  @override
  String get sourceCode => 'Cod sursă';

  @override
  String get notificationAccess => 'Acces la notificări';

  @override
  String get notificationAccessSubtitle =>
      'Necesar pentru citirea titlului piesei';

  @override
  String get grant => 'Permite';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'Broscuța Meteo Google';

  @override
  String versionValue(String version) {
    return 'Versiunea $version';
  }

  @override
  String get cityName => 'Numele orașului';

  @override
  String get search => 'Caută';

  @override
  String get noMatchesFound => 'Niciun rezultat';

  @override
  String get searchFailed => 'Căutarea a eșuat — verificați conexiunea';

  @override
  String get updateAvailable => 'Actualizare disponibilă';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest este disponibilă — aveți v$current.';
  }

  @override
  String get skip => 'Omite';

  @override
  String get later => 'Mai târziu';

  @override
  String get update => 'Actualizează';

  @override
  String get view => 'Vizualizează';

  @override
  String get downloadingUpdate => 'Se descarcă actualizarea…';

  @override
  String get couldNotStartUpdate => 'Nu s-a putut porni actualizarea';

  @override
  String get couldNotOpenLink =>
      'Nu s-a putut deschide linkul pe acest dispozitiv';

  @override
  String get couldNotStartUpdateAlt => 'Nu s-a putut porni actualizarea';

  @override
  String get previousLocation => 'Locația anterioară';

  @override
  String get nextLocation => 'Locația următoare';

  @override
  String get landscapeTitle => 'Froggy arată cel mai bine în mod peisaj';

  @override
  String get landscapeBody =>
      'Rotește telefonul în lateral pentru vederea completă.';

  @override
  String get gotIt => 'Am înțeles';

  @override
  String get locationBlocked =>
      'Locația este blocată, deci aceasta este zona dvs. aproximativă. Permiteți locația în browser, apoi Reîncercați.';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get dismiss => 'Închide';

  @override
  String get systemLanguage => 'Sistem (auto)';

  @override
  String get languageSubtitle => 'Limba aplicației';

  @override
  String get wmoClear => 'Cer senin';

  @override
  String get wmoMainlyClear => 'Predominant senin';

  @override
  String get wmoPartlyCloudy => 'Parțial noros';

  @override
  String get wmoOvercast => 'Noros';

  @override
  String get wmoFog => 'Ceață';

  @override
  String get wmoRimeFog => 'Ceață cu brumă';

  @override
  String get wmoLightDrizzle => 'Burniță ușoară';

  @override
  String get wmoDrizzle => 'Burniță';

  @override
  String get wmoHeavyDrizzle => 'Burniță puternică';

  @override
  String get wmoFreezingDrizzle => 'Burniță înghețată';

  @override
  String get wmoLightRain => 'Ploaie slabă';

  @override
  String get wmoRain => 'Ploaie';

  @override
  String get wmoHeavyRain => 'Ploaie puternică';

  @override
  String get wmoFreezingRain => 'Ploaie înghețată';

  @override
  String get wmoLightSnow => 'Ninsoare slabă';

  @override
  String get wmoSnow => 'Ninsoare';

  @override
  String get wmoHeavySnow => 'Ninsoare abundentă';

  @override
  String get wmoSnowGrains => 'Granule de zăpadă';

  @override
  String get wmoLightShowers => 'Averse ușoare';

  @override
  String get wmoShowers => 'Averse';

  @override
  String get wmoHeavyShowers => 'Averse puternice';

  @override
  String get wmoSnowShowers => 'Averse de zăpadă';

  @override
  String get wmoHeavySnowShowers => 'Averse de zăpadă puternice';

  @override
  String get wmoThunderstorm => 'Furtună';

  @override
  String get wmoThunderstormHail => 'Furtună, grindină';

  @override
  String get wmoUnknown => 'Necunoscut';

  @override
  String get hourlyChart => 'Grafic 24 de ore';

  @override
  String get alwaysShowFrog => 'Afișează mereu broscuța';

  @override
  String get moodCaption => 'Starea broscuței';

  @override
  String get moodLabel => 'Broscuța';

  @override
  String get moodMorningSunny => 'se întinde';

  @override
  String get moodMorningCloudy => 'se trezește';

  @override
  String get moodMorningHazy => 'se bucură de ceață';

  @override
  String get moodMorningRainy => 'cântă în ploaie';

  @override
  String get moodMorningSnowy => 'prinde fulgi';

  @override
  String get moodDaySunny => 'stă la soare';

  @override
  String get moodDayCloudy => 'face un picnic';

  @override
  String get moodDayHazy => 'visează';

  @override
  String get moodDayRainy => 'dansează în ploaie';

  @override
  String get moodDaySnowy => 'se joacă cu bulgări';

  @override
  String get moodSunsetSunny => 'privește apusul';

  @override
  String get moodSunsetCloudy => 'privește apusul';

  @override
  String get moodSunsetHazy => 'privește apusul';

  @override
  String get moodSunsetRainy => 'ascultă ploaia';

  @override
  String get moodSunsetSnowy => 'se încălzește';

  @override
  String get moodNightSunny => 'privește stelele';

  @override
  String get moodNightCloudy => 'visează';

  @override
  String get moodNightHazy => 'visează';

  @override
  String get moodNightRainy => 'face pui de somn';

  @override
  String get moodNightSnowy => 'doarme la căldură';

  @override
  String get moodNightAwakeSunny => 'privește stelele';

  @override
  String get moodNightAwakeCloudy => 'face un picnic de noapte';

  @override
  String get moodNightAwakeHazy => 'privește luna';

  @override
  String get moodNightAwakeRainy => 'dansează în ploaia de noapte';

  @override
  String get moodNightAwakeSnowy => 'se joacă în zăpada de noapte';
}
