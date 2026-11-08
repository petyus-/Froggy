// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'La Rana del Tiempo de Google (Froggy)';

  @override
  String get settings => 'Ajustes';

  @override
  String get resetToDefaults => 'Restablecer valores predeterminados';

  @override
  String get resetSettingsTitle => '¿Restablecer los ajustes?';

  @override
  String get resetSettingsBody =>
      'Restablecer todos los ajustes a los valores predeterminados. Las ubicaciones guardadas se conservan.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get reset => 'Restablecer';

  @override
  String get hidePreview => 'Ocultar vista previa';

  @override
  String get showPreview => 'Mostrar vista previa';

  @override
  String get sectionTiming => 'Temporización';

  @override
  String get sectionOverlaySize => 'Tamaño de la superposición';

  @override
  String get sectionTextShadow => 'Sombra del texto';

  @override
  String get sectionDisplay => 'Pantalla';

  @override
  String get sectionDimming => 'Atenuación';

  @override
  String get sectionStatusIcons => 'Iconos de estado';

  @override
  String get sectionKioskMode => 'Modo kiosco';

  @override
  String get sectionLauncher => 'Lanzador';

  @override
  String get sectionLocation => 'Ubicación';

  @override
  String get sectionLanguage => 'Idioma';

  @override
  String get sectionAbout => 'Acerca de';

  @override
  String get sectionUnits => 'Unidades';

  @override
  String get sectionTimeFormat => 'Formato de hora';

  @override
  String get weatherRefresh => 'Actualización del tiempo';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Rotación de escenas';

  @override
  String get off => 'Desactivado';

  @override
  String get clockTextSize => 'Tamaño del reloj y texto';

  @override
  String get showClock => 'Mostrar reloj';

  @override
  String get showClockSubtitle => 'Hora en la parte inferior';

  @override
  String get showDate => 'Mostrar fecha';

  @override
  String get showWeather => 'Mostrar tiempo';

  @override
  String get showWeatherSubtitle => 'Temperatura y condiciones';

  @override
  String get showLocation => 'Mostrar ubicación';

  @override
  String get showLocationSubtitle => 'Nombre del lugar arriba';

  @override
  String get dimOff => 'Desactivado';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Personalizado';

  @override
  String get level => 'Nivel';

  @override
  String get from => 'Desde';

  @override
  String get to => 'Hasta';

  @override
  String get showStatusIcons => 'Mostrar iconos de estado';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Música';

  @override
  String get showMusicTitle => 'Mostrar título de la música';

  @override
  String get showMusicTitleSubtitle =>
      'Nombre de la canción (requiere acceso a notificaciones)';

  @override
  String get kioskMode => 'Modo kiosco';

  @override
  String get kioskModeSubtitle =>
      'Pantalla siempre encendida para dispositivos sin salvapantallas. Oculta el botón de ajustes (mantén pulsada la pantalla para volver a abrirlo) y mantiene la pantalla encendida.';

  @override
  String get homeApp => 'Aplicación de inicio';

  @override
  String get isDefaultHomeApp =>
      'Froggy es tu aplicación de inicio predeterminada';

  @override
  String get setAsHomeApp =>
      'Mostrar Froggy en la pantalla de inicio, sustituyendo a tu lanzador';

  @override
  String get set => 'Establecer';

  @override
  String get automaticLocation => 'Automática';

  @override
  String get automaticLocationSubtitle => 'Detectar por red / GPS';

  @override
  String get remove => 'Eliminar';

  @override
  String get addLocation => 'Añadir ubicación';

  @override
  String get swipeToSwitch => 'Deslizar para cambiar';

  @override
  String get swipeGestureSubtitle => 'Gesto en la rana';

  @override
  String get swipeLeftRight => 'Izquierda / derecha';

  @override
  String get swipeUpDown => 'Arriba / abajo';

  @override
  String get switchLocations => 'Cambiar ubicación';

  @override
  String get automaticRotationSubtitle => 'Rotación automática';

  @override
  String get manually => 'Manualmente';

  @override
  String get withScene => 'Con la escena';

  @override
  String get onATimer => 'Con temporizador';

  @override
  String get edgeArrows => 'Flechas laterales';

  @override
  String get edgeArrowsSubtitle => 'Botones de atrás / adelante en los lados';

  @override
  String get locationRotation => 'Rotación de ubicaciones';

  @override
  String get checkUpdatesOnStartup => 'Buscar actualizaciones al iniciar';

  @override
  String get checkForUpdates => 'Buscar actualizaciones';

  @override
  String get checkFailed => 'No se pudo comprobar — inténtalo más tarde';

  @override
  String updateAvailableVersion(String version) {
    return 'Actualización disponible: v$version';
  }

  @override
  String get upToDate => 'Ya tienes la última versión';

  @override
  String get downloadInstallUpdate => 'Descargar e instalar actualización';

  @override
  String get getLatestRelease => 'Obtener la última versión';

  @override
  String get sourceCode => 'Código fuente';

  @override
  String get notificationAccess => 'Acceso a notificaciones';

  @override
  String get notificationAccessSubtitle =>
      'Necesario para leer el título de la canción';

  @override
  String get grant => 'Conceder';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'La Rana del Tiempo de Google';

  @override
  String versionValue(String version) {
    return 'Versión $version';
  }

  @override
  String get cityName => 'Nombre de la ciudad';

  @override
  String get search => 'Buscar';

  @override
  String get noMatchesFound => 'Sin resultados';

  @override
  String get searchFailed => 'Error en la búsqueda — comprueba tu conexión';

  @override
  String get updateAvailable => 'Actualización disponible';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest está disponible — tienes la v$current.';
  }

  @override
  String get skip => 'Omitir';

  @override
  String get later => 'Más tarde';

  @override
  String get update => 'Actualizar';

  @override
  String get view => 'Ver';

  @override
  String get downloadingUpdate => 'Descargando actualización…';

  @override
  String get couldNotStartUpdate => 'No se pudo iniciar la actualización';

  @override
  String get couldNotOpenLink =>
      'No se pudo abrir el enlace en este dispositivo';

  @override
  String get couldNotStartUpdateAlt => 'No se pudo iniciar la actualización';

  @override
  String get previousLocation => 'Ubicación anterior';

  @override
  String get nextLocation => 'Ubicación siguiente';

  @override
  String get landscapeTitle => 'Froggy se ve mejor en horizontal';

  @override
  String get landscapeBody => 'Gira el teléfono para ver la vista completa.';

  @override
  String get gotIt => 'Entendido';

  @override
  String get locationBlocked =>
      'La ubicación está bloqueada, así que esta es tu zona aproximada. Permite la ubicación en el navegador y toca Reintentar.';

  @override
  String get retry => 'Reintentar';

  @override
  String get dismiss => 'Cerrar';

  @override
  String get systemLanguage => 'Sistema (auto)';

  @override
  String get languageSubtitle => 'Idioma de la aplicación';

  @override
  String get wmoClear => 'Despejado';

  @override
  String get wmoMainlyClear => 'Mayormente despejado';

  @override
  String get wmoPartlyCloudy => 'Parcialmente nuboso';

  @override
  String get wmoOvercast => 'Cubierto';

  @override
  String get wmoFog => 'Niebla';

  @override
  String get wmoRimeFog => 'Niebla escarchada';

  @override
  String get wmoLightDrizzle => 'Llovizna ligera';

  @override
  String get wmoDrizzle => 'Llovizna';

  @override
  String get wmoHeavyDrizzle => 'Llovizna intensa';

  @override
  String get wmoFreezingDrizzle => 'Llovizna helada';

  @override
  String get wmoLightRain => 'Lluvia ligera';

  @override
  String get wmoRain => 'Lluvia';

  @override
  String get wmoHeavyRain => 'Lluvia intensa';

  @override
  String get wmoFreezingRain => 'Lluvia helada';

  @override
  String get wmoLightSnow => 'Nieve ligera';

  @override
  String get wmoSnow => 'Nieve';

  @override
  String get wmoHeavySnow => 'Nieve intensa';

  @override
  String get wmoSnowGrains => 'Granizo menudo';

  @override
  String get wmoLightShowers => 'Chubascos ligeros';

  @override
  String get wmoShowers => 'Chubascos';

  @override
  String get wmoHeavyShowers => 'Chubascos intensos';

  @override
  String get wmoSnowShowers => 'Chubascos de nieve';

  @override
  String get wmoHeavySnowShowers => 'Chubascos de nieve intensos';

  @override
  String get wmoThunderstorm => 'Tormenta';

  @override
  String get wmoThunderstormHail => 'Tormenta, granizo';

  @override
  String get wmoUnknown => 'Desconocido';

  @override
  String get hourlyChart => 'Gráfico de 24 horas';

  @override
  String get alwaysShowFrog => 'Mostrar siempre la rana';

  @override
  String get moodCaption => 'Humor de la rana';

  @override
  String get nightDimming => 'Atenuación nocturna';

  @override
  String get moodLabel => 'Rana';

  @override
  String get moodMorningSunny => 'se estira';

  @override
  String get moodMorningCloudy => 'se despierta';

  @override
  String get moodMorningHazy => 'disfruta de la niebla';

  @override
  String get moodMorningRainy => 'canta bajo la lluvia';

  @override
  String get moodMorningSnowy => 'atrapa copos';

  @override
  String get moodDaySunny => 'toma el sol';

  @override
  String get moodDayCloudy => 'hace un pícnic';

  @override
  String get moodDayHazy => 'sueña despierto';

  @override
  String get moodDayRainy => 'baila bajo la lluvia';

  @override
  String get moodDaySnowy => 'juega con bolas de nieve';

  @override
  String get moodSunsetSunny => 'mira la puesta de sol';

  @override
  String get moodSunsetCloudy => 'mira la puesta de sol';

  @override
  String get moodSunsetHazy => 'mira la puesta de sol';

  @override
  String get moodSunsetRainy => 'escucha la lluvia';

  @override
  String get moodSunsetSnowy => 'se abriga';

  @override
  String get moodNightSunny => 'mira las estrellas';

  @override
  String get moodNightCloudy => 'sueña';

  @override
  String get moodNightHazy => 'sueña';

  @override
  String get moodNightRainy => 'dormita con la lluvia';

  @override
  String get moodNightSnowy => 'duerme calentito';

  @override
  String get moodNightAwakeSunny => 'mira las estrellas';

  @override
  String get moodNightAwakeCloudy => 'hace un pícnic nocturno';

  @override
  String get moodNightAwakeHazy => 'mira la luna';

  @override
  String get moodNightAwakeRainy => 'baila bajo la lluvia nocturna';

  @override
  String get moodNightAwakeSnowy => 'juega en la nieve nocturna';
}
