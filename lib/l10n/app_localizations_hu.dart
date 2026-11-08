// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'A Google időjárás-békája (Froggy)';

  @override
  String get settings => 'Beállítások';

  @override
  String get resetToDefaults => 'Alapértelmezett visszaállítása';

  @override
  String get resetSettingsTitle => 'Visszaállítja a beállításokat?';

  @override
  String get resetSettingsBody =>
      'Az összes beállítás visszaállítása az alapértelmezett értékekre. A mentett helyek megmaradnak.';

  @override
  String get cancel => 'Mégse';

  @override
  String get reset => 'Visszaállítás';

  @override
  String get hidePreview => 'Előnézet elrejtése';

  @override
  String get showPreview => 'Előnézet megjelenítése';

  @override
  String get sectionTiming => 'Időzítés';

  @override
  String get sectionOverlaySize => 'Réteg mérete';

  @override
  String get sectionTextShadow => 'Szövegárnyék';

  @override
  String get sectionDisplay => 'Megjelenítés';

  @override
  String get sectionDimming => 'Elsötétítés';

  @override
  String get sectionStatusIcons => 'Állapotikonok';

  @override
  String get sectionKioskMode => 'Kioszk mód';

  @override
  String get sectionLauncher => 'Indító';

  @override
  String get sectionLocation => 'Hely';

  @override
  String get sectionLanguage => 'Nyelv';

  @override
  String get sectionAbout => 'Névjegy';

  @override
  String get sectionUnits => 'Mértékegységek';

  @override
  String get sectionTimeFormat => 'Időformátum';

  @override
  String get weatherRefresh => 'Időjárás-frissítés';

  @override
  String minutesValue(int count) {
    return '$count perc';
  }

  @override
  String get sceneRotation => 'Jelenetváltás';

  @override
  String get off => 'Ki';

  @override
  String get clockTextSize => 'Óra- és szövegméret';

  @override
  String get showClock => 'Óra megjelenítése';

  @override
  String get showClockSubtitle => 'Idő alul';

  @override
  String get showDate => 'Dátum megjelenítése';

  @override
  String get showWeather => 'Időjárás megjelenítése';

  @override
  String get showWeatherSubtitle => 'Hőmérséklet és viszonyok';

  @override
  String get showLocation => 'Hely megjelenítése';

  @override
  String get showLocationSubtitle => 'Helynév felül';

  @override
  String get dimOff => 'Ki';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Egyéni';

  @override
  String get level => 'Szint';

  @override
  String get from => 'Kezdete';

  @override
  String get to => 'Vége';

  @override
  String get showStatusIcons => 'Állapotikonok megjelenítése';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Zene';

  @override
  String get showMusicTitle => 'Zenecím megjelenítése';

  @override
  String get showMusicTitleSubtitle =>
      'Számcím (értesítés-hozzáférés szükséges)';

  @override
  String get kioskMode => 'Kioszk mód';

  @override
  String get kioskModeSubtitle =>
      'Mindig bekapcsolt kijelző képernyőkímélő nélküli eszközökhöz. Elrejti a beállítások gombot (a képernyő hosszú megnyomásával nyitható újra), és bekapcsolva tartja a képernyőt.';

  @override
  String get homeApp => 'Kezdőalkalmazás';

  @override
  String get isDefaultHomeApp =>
      'A Froggy az alapértelmezett kezdőalkalmazásod';

  @override
  String get setAsHomeApp =>
      'Froggy megjelenítése a kezdőképernyőn, az indító helyett';

  @override
  String get set => 'Beállítás';

  @override
  String get automaticLocation => 'Automatikus';

  @override
  String get automaticLocationSubtitle => 'Észlelés hálózatról / GPS-ből';

  @override
  String get remove => 'Eltávolítás';

  @override
  String get addLocation => 'Hely hozzáadása';

  @override
  String get swipeToSwitch => 'Csúsztatással váltás';

  @override
  String get swipeGestureSubtitle => 'Gesztus a békán';

  @override
  String get swipeLeftRight => 'Bal / jobb';

  @override
  String get swipeUpDown => 'Fel / le';

  @override
  String get switchLocations => 'Helyváltás';

  @override
  String get automaticRotationSubtitle => 'Automatikus váltás';

  @override
  String get manually => 'Kézi';

  @override
  String get withScene => 'Jelenettel együtt';

  @override
  String get onATimer => 'Időzítve';

  @override
  String get edgeArrows => 'Szélnyilak';

  @override
  String get edgeArrowsSubtitle => 'Vissza / előre gombok az oldalakon';

  @override
  String get locationRotation => 'Helyváltás időzítése';

  @override
  String get checkUpdatesOnStartup => 'Frissítések keresése indításkor';

  @override
  String get checkForUpdates => 'Frissítések keresése';

  @override
  String get checkFailed => 'Nem sikerült ellenőrizni — próbáld újra később';

  @override
  String updateAvailableVersion(String version) {
    return 'Frissítés érhető el: v$version';
  }

  @override
  String get upToDate => 'A legújabb verziót használod';

  @override
  String get downloadInstallUpdate => 'Frissítés letöltése és telepítése';

  @override
  String get getLatestRelease => 'Legújabb kiadás letöltése';

  @override
  String get sourceCode => 'Forráskód';

  @override
  String get notificationAccess => 'Értesítés-hozzáférés';

  @override
  String get notificationAccessSubtitle => 'A számcím beolvasásához szükséges';

  @override
  String get grant => 'Engedélyezés';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'A Google időjárás-békája';

  @override
  String versionValue(String version) {
    return 'Verzió: $version';
  }

  @override
  String get cityName => 'Város neve';

  @override
  String get search => 'Keresés';

  @override
  String get noMatchesFound => 'Nincs találat';

  @override
  String get searchFailed => 'A keresés sikertelen — ellenőrizd a kapcsolatot';

  @override
  String get updateAvailable => 'Frissítés érhető el';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Elérhető a Froggy v$latest — jelenleg v$current van.';
  }

  @override
  String get skip => 'Kihagyás';

  @override
  String get later => 'Később';

  @override
  String get update => 'Frissítés';

  @override
  String get view => 'Megtekintés';

  @override
  String get downloadingUpdate => 'Frissítés letöltése…';

  @override
  String get couldNotStartUpdate => 'A frissítés indítása nem sikerült';

  @override
  String get couldNotOpenLink => 'A link nem nyitható meg ezen az eszközön';

  @override
  String get couldNotStartUpdateAlt => 'A frissítés indítása nem sikerült';

  @override
  String get previousLocation => 'Előző hely';

  @override
  String get nextLocation => 'Következő hely';

  @override
  String get landscapeTitle => 'A Froggy fekvő módban néz ki a legjobban';

  @override
  String get landscapeBody => 'Fordítsd oldalt a telefont a teljes nézethez.';

  @override
  String get gotIt => 'Rendben';

  @override
  String get locationBlocked =>
      'A helymeghatározás le van tiltva, ezért ez a hozzávetőleges területed. Engedélyezd a helyet a böngészőben, majd próbáld újra.';

  @override
  String get retry => 'Újra';

  @override
  String get dismiss => 'Bezárás';

  @override
  String get systemLanguage => 'Rendszer (auto)';

  @override
  String get languageSubtitle => 'App nyelve';

  @override
  String get wmoClear => 'Tiszta';

  @override
  String get wmoMainlyClear => 'Főként tiszta';

  @override
  String get wmoPartlyCloudy => 'Felhős';

  @override
  String get wmoOvercast => 'Borult';

  @override
  String get wmoFog => 'Köd';

  @override
  String get wmoRimeFog => 'Zúzmódás köd';

  @override
  String get wmoLightDrizzle => 'Gyenge szitálás';

  @override
  String get wmoDrizzle => 'Szitálás';

  @override
  String get wmoHeavyDrizzle => 'Erős szitálás';

  @override
  String get wmoFreezingDrizzle => 'Fagyos szitálás';

  @override
  String get wmoLightRain => 'Gyenge eső';

  @override
  String get wmoRain => 'Eső';

  @override
  String get wmoHeavyRain => 'Heves eső';

  @override
  String get wmoFreezingRain => 'Fagyos eső';

  @override
  String get wmoLightSnow => 'Gyenge hóesés';

  @override
  String get wmoSnow => 'Hóesés';

  @override
  String get wmoHeavySnow => 'Heves hóesés';

  @override
  String get wmoSnowGrains => 'Hószemek';

  @override
  String get wmoLightShowers => 'Gyenge záporok';

  @override
  String get wmoShowers => 'Záporok';

  @override
  String get wmoHeavyShowers => 'Heves záporok';

  @override
  String get wmoSnowShowers => 'Hózáporok';

  @override
  String get wmoHeavySnowShowers => 'Heves hózáporok';

  @override
  String get wmoThunderstorm => 'Zivatar';

  @override
  String get wmoThunderstormHail => 'Zivatar, jégeső';

  @override
  String get wmoUnknown => 'Ismeretlen';

  @override
  String get hourlyChart => '24 órás grafikon';

  @override
  String get alwaysShowFrog => 'Mindig látszódjon a béka';

  @override
  String get moodCaption => 'Béka hangulata';

  @override
  String get nightDimming => 'Éjszakai halványítás';

  @override
  String get moodLabel => 'Béka';

  @override
  String get moodMorningSunny => 'nyújtózkodik';

  @override
  String get moodMorningCloudy => 'ébredezik';

  @override
  String get moodMorningHazy => 'ködöt szív';

  @override
  String get moodMorningRainy => 'esőben énekel';

  @override
  String get moodMorningSnowy => 'hópihét fog';

  @override
  String get moodDaySunny => 'napozik';

  @override
  String get moodDayCloudy => 'piknikelt';

  @override
  String get moodDayHazy => 'ábrándozik';

  @override
  String get moodDayRainy => 'esőtáncol';

  @override
  String get moodDaySnowy => 'hólabdázik';

  @override
  String get moodSunsetSunny => 'naplementét néz';

  @override
  String get moodSunsetCloudy => 'naplementét néz';

  @override
  String get moodSunsetHazy => 'naplementét néz';

  @override
  String get moodSunsetRainy => 'esőcseppeket hallgat';

  @override
  String get moodSunsetSnowy => 'melegedik';

  @override
  String get moodNightSunny => 'csillagászik';

  @override
  String get moodNightCloudy => 'álmodik';

  @override
  String get moodNightHazy => 'álmodik';

  @override
  String get moodNightRainy => 'szunyókál';

  @override
  String get moodNightSnowy => 'melegben alszik';

  @override
  String get moodNightAwakeSunny => 'csillagászik';

  @override
  String get moodNightAwakeCloudy => 'éjjeli piknikelt';

  @override
  String get moodNightAwakeHazy => 'holdnéző';

  @override
  String get moodNightAwakeRainy => 'esőben táncol';

  @override
  String get moodNightAwakeSnowy => 'hóembert épít';
}
