// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'La Rana del Meteo di Google (Froggy)';

  @override
  String get settings => 'Impostazioni';

  @override
  String get resetToDefaults => 'Ripristina impostazioni predefinite';

  @override
  String get resetSettingsTitle => 'Ripristinare le impostazioni?';

  @override
  String get resetSettingsBody =>
      'Ripristina tutte le impostazioni ai valori predefiniti. Le località salvate vengono conservate.';

  @override
  String get cancel => 'Annulla';

  @override
  String get reset => 'Ripristina';

  @override
  String get hidePreview => 'Nascondi anteprima';

  @override
  String get showPreview => 'Mostra anteprima';

  @override
  String get sectionTiming => 'Temporizzazione';

  @override
  String get sectionOverlaySize => 'Dimensione sovrimpressione';

  @override
  String get sectionTextShadow => 'Ombra del testo';

  @override
  String get sectionDisplay => 'Schermo';

  @override
  String get sectionDimming => 'Oscuramento';

  @override
  String get sectionStatusIcons => 'Icone di stato';

  @override
  String get sectionKioskMode => 'Modalità chiosco';

  @override
  String get sectionLauncher => 'Launcher';

  @override
  String get sectionLocation => 'Posizione';

  @override
  String get sectionLanguage => 'Lingua';

  @override
  String get sectionAbout => 'Informazioni';

  @override
  String get sectionUnits => 'Unità';

  @override
  String get sectionTimeFormat => 'Formato ora';

  @override
  String get weatherRefresh => 'Aggiornamento meteo';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Rotazione scene';

  @override
  String get off => 'Off';

  @override
  String get clockTextSize => 'Dimensione orologio e testo';

  @override
  String get showClock => 'Mostra orologio';

  @override
  String get showClockSubtitle => 'Ora in basso';

  @override
  String get showDate => 'Mostra data';

  @override
  String get showWeather => 'Mostra meteo';

  @override
  String get showWeatherSubtitle => 'Temperatura e condizioni';

  @override
  String get showLocation => 'Mostra posizione';

  @override
  String get showLocationSubtitle => 'Nome del luogo in alto';

  @override
  String get dimOff => 'Off';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Personalizzato';

  @override
  String get level => 'Livello';

  @override
  String get from => 'Dalle';

  @override
  String get to => 'Alle';

  @override
  String get showStatusIcons => 'Mostra icone di stato';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Musica';

  @override
  String get showMusicTitle => 'Mostra titolo musica';

  @override
  String get showMusicTitleSubtitle =>
      'Nome del brano (richiede accesso alle notifiche)';

  @override
  String get kioskMode => 'Modalità chiosco';

  @override
  String get kioskModeSubtitle =>
      'Display sempre attivo per dispositivi senza screensaver. Nasconde il pulsante impostazioni (tieni premuto lo schermo per riaprirlo) e mantiene lo schermo acceso.';

  @override
  String get homeApp => 'App home';

  @override
  String get isDefaultHomeApp => 'Froggy è la tua app home predefinita';

  @override
  String get setAsHomeApp =>
      'Mostra Froggy nella schermata home, al posto del tuo launcher';

  @override
  String get set => 'Imposta';

  @override
  String get automaticLocation => 'Automatica';

  @override
  String get automaticLocationSubtitle => 'Rilevata da rete / GPS';

  @override
  String get remove => 'Rimuovi';

  @override
  String get addLocation => 'Aggiungi posizione';

  @override
  String get swipeToSwitch => 'Scorri per cambiare';

  @override
  String get swipeGestureSubtitle => 'Gesto sulla rana';

  @override
  String get swipeLeftRight => 'Sinistra / destra';

  @override
  String get swipeUpDown => 'Su / giù';

  @override
  String get switchLocations => 'Cambia posizione';

  @override
  String get automaticRotationSubtitle => 'Rotazione automatica';

  @override
  String get manually => 'Manualmente';

  @override
  String get withScene => 'Con la scena';

  @override
  String get onATimer => 'A tempo';

  @override
  String get edgeArrows => 'Frecce laterali';

  @override
  String get edgeArrowsSubtitle => 'Pulsanti indietro / avanti ai lati';

  @override
  String get locationRotation => 'Rotazione posizione';

  @override
  String get checkUpdatesOnStartup => 'Cerca aggiornamenti all\'avvio';

  @override
  String get checkForUpdates => 'Cerca aggiornamenti';

  @override
  String get checkFailed => 'Impossibile controllare — riprova più tardi';

  @override
  String updateAvailableVersion(String version) {
    return 'Aggiornamento disponibile: v$version';
  }

  @override
  String get upToDate => 'Hai già l\'ultima versione';

  @override
  String get downloadInstallUpdate => 'Scarica e installa aggiornamento';

  @override
  String get getLatestRelease => 'Ottieni l\'ultima versione';

  @override
  String get sourceCode => 'Codice sorgente';

  @override
  String get notificationAccess => 'Accesso alle notifiche';

  @override
  String get notificationAccessSubtitle =>
      'Necessario per leggere il titolo del brano';

  @override
  String get grant => 'Concedi';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'La Rana del Meteo di Google';

  @override
  String versionValue(String version) {
    return 'Versione $version';
  }

  @override
  String get cityName => 'Nome della città';

  @override
  String get search => 'Cerca';

  @override
  String get noMatchesFound => 'Nessun risultato';

  @override
  String get searchFailed => 'Ricerca non riuscita — controlla la connessione';

  @override
  String get updateAvailable => 'Aggiornamento disponibile';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest è disponibile — hai la v$current.';
  }

  @override
  String get skip => 'Salta';

  @override
  String get later => 'Più tardi';

  @override
  String get update => 'Aggiorna';

  @override
  String get view => 'Visualizza';

  @override
  String get downloadingUpdate => 'Download dell\'aggiornamento…';

  @override
  String get couldNotStartUpdate => 'Impossibile avviare l\'aggiornamento';

  @override
  String get couldNotOpenLink =>
      'Impossibile aprire il collegamento su questo dispositivo';

  @override
  String get couldNotStartUpdateAlt => 'Impossibile avviare l\'aggiornamento';

  @override
  String get previousLocation => 'Posizione precedente';

  @override
  String get nextLocation => 'Posizione successiva';

  @override
  String get landscapeTitle => 'Froggy rende meglio in orizzontale';

  @override
  String get landscapeBody =>
      'Ruota il telefono di lato per la vista completa.';

  @override
  String get gotIt => 'Ok';

  @override
  String get locationBlocked =>
      'La posizione è bloccata, quindi questa è la tua zona approssimativa. Consenti la posizione nel browser, poi riprova.';

  @override
  String get retry => 'Riprova';

  @override
  String get dismiss => 'Chiudi';

  @override
  String get systemLanguage => 'Sistema (auto)';

  @override
  String get languageSubtitle => 'Lingua dell\'app';

  @override
  String get wmoClear => 'Sereno';

  @override
  String get wmoMainlyClear => 'Prevalentemente sereno';

  @override
  String get wmoPartlyCloudy => 'Parzialmente nuvoloso';

  @override
  String get wmoOvercast => 'Coperto';

  @override
  String get wmoFog => 'Nebbia';

  @override
  String get wmoRimeFog => 'Nebbia di brina';

  @override
  String get wmoLightDrizzle => 'Pioviggine leggera';

  @override
  String get wmoDrizzle => 'Pioviggine';

  @override
  String get wmoHeavyDrizzle => 'Pioviggine forte';

  @override
  String get wmoFreezingDrizzle => 'Pioviggine gelata';

  @override
  String get wmoLightRain => 'Pioggia leggera';

  @override
  String get wmoRain => 'Pioggia';

  @override
  String get wmoHeavyRain => 'Pioggia forte';

  @override
  String get wmoFreezingRain => 'Pioggia gelata';

  @override
  String get wmoLightSnow => 'Neve leggera';

  @override
  String get wmoSnow => 'Neve';

  @override
  String get wmoHeavySnow => 'Neve forte';

  @override
  String get wmoSnowGrains => 'Granelli di neve';

  @override
  String get wmoLightShowers => 'Rovesci leggeri';

  @override
  String get wmoShowers => 'Rovesci';

  @override
  String get wmoHeavyShowers => 'Rovesci forti';

  @override
  String get wmoSnowShowers => 'Rovesci di neve';

  @override
  String get wmoHeavySnowShowers => 'Rovesci di neve forti';

  @override
  String get wmoThunderstorm => 'Temporale';

  @override
  String get wmoThunderstormHail => 'Temporale, grandine';

  @override
  String get wmoUnknown => 'Sconosciuto';

  @override
  String get hourlyChart => 'Grafico 24 ore';

  @override
  String get alwaysShowFrog => 'Mostra sempre la rana';
}
