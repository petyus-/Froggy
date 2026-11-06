// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Żaba Pogodowa Google (Froggy)';

  @override
  String get settings => 'Ustawienia';

  @override
  String get resetToDefaults => 'Przywróć domyślne';

  @override
  String get resetSettingsTitle => 'Przywrócić ustawienia?';

  @override
  String get resetSettingsBody =>
      'Przywróć wszystkie ustawienia do wartości domyślnych. Zapisane lokalizacje zostaną zachowane.';

  @override
  String get cancel => 'Anuluj';

  @override
  String get reset => 'Przywróć';

  @override
  String get hidePreview => 'Ukryj podgląd';

  @override
  String get showPreview => 'Pokaż podgląd';

  @override
  String get sectionTiming => 'Czas';

  @override
  String get sectionOverlaySize => 'Rozmiar nakładki';

  @override
  String get sectionTextShadow => 'Cień tekstu';

  @override
  String get sectionDisplay => 'Wyświetlanie';

  @override
  String get sectionDimming => 'Przygaszanie';

  @override
  String get sectionStatusIcons => 'Ikony stanu';

  @override
  String get sectionKioskMode => 'Tryb kiosku';

  @override
  String get sectionLauncher => 'Launcher';

  @override
  String get sectionLocation => 'Lokalizacja';

  @override
  String get sectionLanguage => 'Język';

  @override
  String get sectionAbout => 'O aplikacji';

  @override
  String get sectionUnits => 'Jednostki';

  @override
  String get sectionTimeFormat => 'Format czasu';

  @override
  String get weatherRefresh => 'Aktualizacja pogody';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Rotacja scen';

  @override
  String get off => 'Wył.';

  @override
  String get clockTextSize => 'Rozmiar zegara i tekstu';

  @override
  String get showClock => 'Pokaż zegar';

  @override
  String get showClockSubtitle => 'Czas na dole';

  @override
  String get showDate => 'Pokaż datę';

  @override
  String get showWeather => 'Pokaż pogodę';

  @override
  String get showWeatherSubtitle => 'Temperatura i warunki';

  @override
  String get showLocation => 'Pokaż lokalizację';

  @override
  String get showLocationSubtitle => 'Nazwa miejsca u góry';

  @override
  String get dimOff => 'Wył.';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Własne';

  @override
  String get level => 'Poziom';

  @override
  String get from => 'Od';

  @override
  String get to => 'Do';

  @override
  String get showStatusIcons => 'Pokaż ikony stanu';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Muzyka';

  @override
  String get showMusicTitle => 'Pokaż tytuł utworu';

  @override
  String get showMusicTitleSubtitle =>
      'Nazwa utworu (wymaga dostępu do powiadomień)';

  @override
  String get kioskMode => 'Tryb kiosku';

  @override
  String get kioskModeSubtitle =>
      'Wyświetlacz zawsze włączony dla urządzeń bez wygaszacza ekranu. Ukrywa przycisk ustawień (przytrzymaj ekran, aby otworzyć ponownie) i utrzymuje włączony ekran.';

  @override
  String get homeApp => 'Aplikacja domowa';

  @override
  String get isDefaultHomeApp => 'Froggy jest Twoją domyślną aplikacją domową';

  @override
  String get setAsHomeApp =>
      'Pokaż Froggy na ekranie głównym, zastępując launcher';

  @override
  String get set => 'Ustaw';

  @override
  String get automaticLocation => 'Automatycznie';

  @override
  String get automaticLocationSubtitle => 'Wykrywaj z sieci / GPS';

  @override
  String get remove => 'Usuń';

  @override
  String get addLocation => 'Dodaj lokalizację';

  @override
  String get swipeToSwitch => 'Przesuń, aby zmienić';

  @override
  String get swipeGestureSubtitle => 'Gest na żabie';

  @override
  String get swipeLeftRight => 'Lewo / prawo';

  @override
  String get swipeUpDown => 'Góra / dół';

  @override
  String get switchLocations => 'Zmiana lokalizacji';

  @override
  String get automaticRotationSubtitle => 'Automatyczna rotacja';

  @override
  String get manually => 'Ręcznie';

  @override
  String get withScene => 'Ze sceną';

  @override
  String get onATimer => 'Co czas';

  @override
  String get edgeArrows => 'Strzałki na krawędziach';

  @override
  String get edgeArrowsSubtitle => 'Przyciski wstecz / dalej po bokach';

  @override
  String get locationRotation => 'Rotacja lokalizacji';

  @override
  String get checkUpdatesOnStartup => 'Sprawdzaj aktualizacje przy starcie';

  @override
  String get checkForUpdates => 'Sprawdź aktualizacje';

  @override
  String get checkFailed => 'Nie można sprawdzić — spróbuj później';

  @override
  String updateAvailableVersion(String version) {
    return 'Dostępna aktualizacja: v$version';
  }

  @override
  String get upToDate => 'Masz najnowszą wersję';

  @override
  String get downloadInstallUpdate => 'Pobierz i zainstaluj aktualizację';

  @override
  String get getLatestRelease => 'Pobierz najnowszą wersję';

  @override
  String get sourceCode => 'Kod źródłowy';

  @override
  String get notificationAccess => 'Dostęp do powiadomień';

  @override
  String get notificationAccessSubtitle =>
      'Wymagane do odczytania tytułu utworu';

  @override
  String get grant => 'Przyznaj';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'Żaba Pogodowa Google';

  @override
  String versionValue(String version) {
    return 'Wersja $version';
  }

  @override
  String get cityName => 'Nazwa miasta';

  @override
  String get search => 'Szukaj';

  @override
  String get noMatchesFound => 'Brak wyników';

  @override
  String get searchFailed =>
      'Wyszukiwanie nie powiodło się — sprawdź połączenie';

  @override
  String get updateAvailable => 'Dostępna aktualizacja';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Dostępna jest Froggy v$latest — masz v$current.';
  }

  @override
  String get skip => 'Pomiń';

  @override
  String get later => 'Później';

  @override
  String get update => 'Aktualizuj';

  @override
  String get view => 'Wyświetl';

  @override
  String get downloadingUpdate => 'Pobieranie aktualizacji…';

  @override
  String get couldNotStartUpdate => 'Nie można rozpocząć aktualizacji';

  @override
  String get couldNotOpenLink => 'Nie można otworzyć linku na tym urządzeniu';

  @override
  String get couldNotStartUpdateAlt => 'Nie można rozpocząć aktualizacji';

  @override
  String get previousLocation => 'Poprzednia lokalizacja';

  @override
  String get nextLocation => 'Następna lokalizacja';

  @override
  String get landscapeTitle => 'Froggy najlepiej wygląda w poziomie';

  @override
  String get landscapeBody =>
      'Obróć telefon poziomo, aby zobaczyć pełny widok.';

  @override
  String get gotIt => 'Rozumiem';

  @override
  String get locationBlocked =>
      'Lokalizacja jest zablokowana, więc to Twój przybliżony obszar. Zezwól na lokalizację w przeglądarce i spróbuj ponownie.';

  @override
  String get retry => 'Ponów';

  @override
  String get dismiss => 'Zamknij';

  @override
  String get systemLanguage => 'Systemowy (auto)';

  @override
  String get languageSubtitle => 'Język aplikacji';

  @override
  String get wmoClear => 'Bezchmurnie';

  @override
  String get wmoMainlyClear => 'Przeważnie bezchmurnie';

  @override
  String get wmoPartlyCloudy => 'Częściowo pochmurno';

  @override
  String get wmoOvercast => 'Pochmurno';

  @override
  String get wmoFog => 'Mgła';

  @override
  String get wmoRimeFog => 'Mgła osadzająca szadź';

  @override
  String get wmoLightDrizzle => 'Słaba mżawka';

  @override
  String get wmoDrizzle => 'Mżawka';

  @override
  String get wmoHeavyDrizzle => 'Silna mżawka';

  @override
  String get wmoFreezingDrizzle => 'Marznąca mżawka';

  @override
  String get wmoLightRain => 'Słaby deszcz';

  @override
  String get wmoRain => 'Deszcz';

  @override
  String get wmoHeavyRain => 'Silny deszcz';

  @override
  String get wmoFreezingRain => 'Marznący deszcz';

  @override
  String get wmoLightSnow => 'Słabe śniecenie';

  @override
  String get wmoSnow => 'Śnieg';

  @override
  String get wmoHeavySnow => 'Silny śnieg';

  @override
  String get wmoSnowGrains => 'Kasza śnieżna';

  @override
  String get wmoLightShowers => 'Słabe przelotne opady';

  @override
  String get wmoShowers => 'Przelotne opady';

  @override
  String get wmoHeavyShowers => 'Silne przelotne opady';

  @override
  String get wmoSnowShowers => 'Przelotne opady śniegu';

  @override
  String get wmoHeavySnowShowers => 'Silne przelotne opady śniegu';

  @override
  String get wmoThunderstorm => 'Burza';

  @override
  String get wmoThunderstormHail => 'Burza, grad';

  @override
  String get wmoUnknown => 'Nieznane';

  @override
  String get hourlyChart => 'Wykres 24-godzinny';

  @override
  String get alwaysShowFrog => 'Zawsze pokazuj żabę';

  @override
  String get moodCaption => 'Nastrój żaby';

  @override
  String get moodLabel => 'Żaba';

  @override
  String get moodMorningSunny => 'rozciąga się';

  @override
  String get moodMorningCloudy => 'budzi się';

  @override
  String get moodMorningHazy => 'cieszy się mgłą';

  @override
  String get moodMorningRainy => 'śpiewa w deszczu';

  @override
  String get moodMorningSnowy => 'łapie płatki śniegu';

  @override
  String get moodDaySunny => 'opala się';

  @override
  String get moodDayCloudy => 'robi piknik';

  @override
  String get moodDayHazy => 'marzy';

  @override
  String get moodDayRainy => 'tańczy w deszczu';

  @override
  String get moodDaySnowy => 'gra w śnieżki';

  @override
  String get moodSunsetSunny => 'podziwia zachód słońca';

  @override
  String get moodSunsetCloudy => 'podziwia zachód słońca';

  @override
  String get moodSunsetHazy => 'podziwia zachód słońca';

  @override
  String get moodSunsetRainy => 'słucha deszczu';

  @override
  String get moodSunsetSnowy => 'ogrzewa się';

  @override
  String get moodNightSunny => 'patrzy na gwiazdy';

  @override
  String get moodNightCloudy => 'śni';

  @override
  String get moodNightHazy => 'śni';

  @override
  String get moodNightRainy => 'drzemie przy deszczu';

  @override
  String get moodNightSnowy => 'śpi w cieple';

  @override
  String get moodNightAwakeSunny => 'obserwuje gwiazdy';

  @override
  String get moodNightAwakeCloudy => 'urządza nocny piknik';

  @override
  String get moodNightAwakeHazy => 'podziwia księżyc';

  @override
  String get moodNightAwakeRainy => 'tańczy w nocnym deszczu';

  @override
  String get moodNightAwakeSnowy => 'bawi się w nocnym śniegu';
}
