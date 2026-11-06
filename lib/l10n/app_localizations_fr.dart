// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'La Grenouille Météo de Google (Froggy)';

  @override
  String get settings => 'Paramètres';

  @override
  String get resetToDefaults => 'Réinitialiser les valeurs par défaut';

  @override
  String get resetSettingsTitle => 'Réinitialiser les paramètres ?';

  @override
  String get resetSettingsBody =>
      'Rétablir tous les paramètres par défaut. Les lieux enregistrés sont conservés.';

  @override
  String get cancel => 'Annuler';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get hidePreview => 'Masquer l\'aperçu';

  @override
  String get showPreview => 'Afficher l\'aperçu';

  @override
  String get sectionTiming => 'Minutage';

  @override
  String get sectionOverlaySize => 'Taille de la surcouche';

  @override
  String get sectionTextShadow => 'Ombre du texte';

  @override
  String get sectionDisplay => 'Affichage';

  @override
  String get sectionDimming => 'Atténuation';

  @override
  String get sectionStatusIcons => 'Icônes d\'état';

  @override
  String get sectionKioskMode => 'Mode kiosque';

  @override
  String get sectionLauncher => 'Lanceur';

  @override
  String get sectionLocation => 'Lieu';

  @override
  String get sectionLanguage => 'Langue';

  @override
  String get sectionAbout => 'À propos';

  @override
  String get sectionUnits => 'Unités';

  @override
  String get sectionTimeFormat => 'Format de l\'heure';

  @override
  String get weatherRefresh => 'Actualisation météo';

  @override
  String minutesValue(int count) {
    return '$count min';
  }

  @override
  String get sceneRotation => 'Rotation des scènes';

  @override
  String get off => 'Désactivé';

  @override
  String get clockTextSize => 'Taille de l\'horloge et du texte';

  @override
  String get showClock => 'Afficher l\'horloge';

  @override
  String get showClockSubtitle => 'Heure en bas';

  @override
  String get showDate => 'Afficher la date';

  @override
  String get showWeather => 'Afficher la météo';

  @override
  String get showWeatherSubtitle => 'Température et conditions';

  @override
  String get showLocation => 'Afficher le lieu';

  @override
  String get showLocationSubtitle => 'Nom du lieu en haut';

  @override
  String get dimOff => 'Désactivé';

  @override
  String get dimAuto => 'Auto';

  @override
  String get dimCustom => 'Personnalisé';

  @override
  String get level => 'Niveau';

  @override
  String get from => 'De';

  @override
  String get to => 'À';

  @override
  String get showStatusIcons => 'Afficher les icônes d\'état';

  @override
  String get wifi => 'Wi-Fi';

  @override
  String get bluetooth => 'Bluetooth';

  @override
  String get music => 'Musique';

  @override
  String get showMusicTitle => 'Afficher le titre de la musique';

  @override
  String get showMusicTitleSubtitle =>
      'Nom du morceau (nécessite l\'accès aux notifications)';

  @override
  String get kioskMode => 'Mode kiosque';

  @override
  String get kioskModeSubtitle =>
      'Affichage permanent pour les appareils sans économiseur d\'écran. Masque le bouton des paramètres (appui long sur l\'écran pour le rouvrir) et garde l\'écran allumé.';

  @override
  String get homeApp => 'Application d\'accueil';

  @override
  String get isDefaultHomeApp =>
      'Froggy est votre application d\'accueil par défaut';

  @override
  String get setAsHomeApp =>
      'Afficher Froggy sur l\'écran d\'accueil, à la place de votre lanceur';

  @override
  String get set => 'Définir';

  @override
  String get automaticLocation => 'Automatique';

  @override
  String get automaticLocationSubtitle => 'Détecté via le réseau / GPS';

  @override
  String get remove => 'Supprimer';

  @override
  String get addLocation => 'Ajouter un lieu';

  @override
  String get swipeToSwitch => 'Balayer pour changer';

  @override
  String get swipeGestureSubtitle => 'Geste sur la grenouille';

  @override
  String get swipeLeftRight => 'Gauche / droite';

  @override
  String get swipeUpDown => 'Haut / bas';

  @override
  String get switchLocations => 'Changer de lieu';

  @override
  String get automaticRotationSubtitle => 'Rotation automatique';

  @override
  String get manually => 'Manuellement';

  @override
  String get withScene => 'Avec la scène';

  @override
  String get onATimer => 'Sur minuteur';

  @override
  String get edgeArrows => 'Flèches latérales';

  @override
  String get edgeArrowsSubtitle => 'Boutons précédent / suivant sur les côtés';

  @override
  String get locationRotation => 'Rotation des lieux';

  @override
  String get checkUpdatesOnStartup =>
      'Rechercher les mises à jour au démarrage';

  @override
  String get checkForUpdates => 'Rechercher des mises à jour';

  @override
  String get checkFailed => 'Vérification impossible — réessayez plus tard';

  @override
  String updateAvailableVersion(String version) {
    return 'Mise à jour disponible : v$version';
  }

  @override
  String get upToDate => 'Vous utilisez la dernière version';

  @override
  String get downloadInstallUpdate => 'Télécharger et installer la mise à jour';

  @override
  String get getLatestRelease => 'Obtenir la dernière version';

  @override
  String get sourceCode => 'Code source';

  @override
  String get notificationAccess => 'Accès aux notifications';

  @override
  String get notificationAccessSubtitle =>
      'Nécessaire pour lire le titre du morceau';

  @override
  String get grant => 'Autoriser';

  @override
  String get froggy => 'Froggy';

  @override
  String get googlesWeatherFrog => 'La Grenouille Météo de Google';

  @override
  String versionValue(String version) {
    return 'Version $version';
  }

  @override
  String get cityName => 'Nom de la ville';

  @override
  String get search => 'Rechercher';

  @override
  String get noMatchesFound => 'Aucun résultat';

  @override
  String get searchFailed => 'Échec de la recherche — vérifiez votre connexion';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String updateAvailableDetails(String latest, String current) {
    return 'Froggy v$latest est disponible — vous avez la v$current.';
  }

  @override
  String get skip => 'Ignorer';

  @override
  String get later => 'Plus tard';

  @override
  String get update => 'Mettre à jour';

  @override
  String get view => 'Voir';

  @override
  String get downloadingUpdate => 'Téléchargement de la mise à jour…';

  @override
  String get couldNotStartUpdate => 'Impossible de démarrer la mise à jour';

  @override
  String get couldNotOpenLink =>
      'Impossible d\'ouvrir le lien sur cet appareil';

  @override
  String get couldNotStartUpdateAlt => 'Impossible de démarrer la mise à jour';

  @override
  String get previousLocation => 'Lieu précédent';

  @override
  String get nextLocation => 'Lieu suivant';

  @override
  String get landscapeTitle => 'Froggy est plus beau en paysage';

  @override
  String get landscapeBody =>
      'Tournez votre téléphone pour profiter de la vue complète.';

  @override
  String get gotIt => 'Compris';

  @override
  String get locationBlocked =>
      'La localisation est bloquée, ceci est donc votre zone approximative. Autorisez la localisation dans votre navigateur, puis réessayez.';

  @override
  String get retry => 'Réessayer';

  @override
  String get dismiss => 'Fermer';

  @override
  String get systemLanguage => 'Système (auto)';

  @override
  String get languageSubtitle => 'Langue de l\'application';

  @override
  String get wmoClear => 'Ciel dégagé';

  @override
  String get wmoMainlyClear => 'Plutôt dégagé';

  @override
  String get wmoPartlyCloudy => 'Partiellement nuageux';

  @override
  String get wmoOvercast => 'Couvert';

  @override
  String get wmoFog => 'Brouillard';

  @override
  String get wmoRimeFog => 'Brouillard givrant';

  @override
  String get wmoLightDrizzle => 'Bruine légère';

  @override
  String get wmoDrizzle => 'Bruine';

  @override
  String get wmoHeavyDrizzle => 'Bruine forte';

  @override
  String get wmoFreezingDrizzle => 'Bruine verglaçante';

  @override
  String get wmoLightRain => 'Pluie faible';

  @override
  String get wmoRain => 'Pluie';

  @override
  String get wmoHeavyRain => 'Pluie forte';

  @override
  String get wmoFreezingRain => 'Pluie verglaçante';

  @override
  String get wmoLightSnow => 'Neige faible';

  @override
  String get wmoSnow => 'Neige';

  @override
  String get wmoHeavySnow => 'Neige forte';

  @override
  String get wmoSnowGrains => 'Grains de neige';

  @override
  String get wmoLightShowers => 'Averses faibles';

  @override
  String get wmoShowers => 'Averses';

  @override
  String get wmoHeavyShowers => 'Averses fortes';

  @override
  String get wmoSnowShowers => 'Averses de neige';

  @override
  String get wmoHeavySnowShowers => 'Averses de neige fortes';

  @override
  String get wmoThunderstorm => 'Orage';

  @override
  String get wmoThunderstormHail => 'Orage, grêle';

  @override
  String get wmoUnknown => 'Inconnu';

  @override
  String get hourlyChart => 'Graphique 24 heures';

  @override
  String get alwaysShowFrog => 'Toujours afficher la grenouille';

  @override
  String get moodCaption => 'Humeur de la grenouille';

  @override
  String get moodLabel => 'Grenouille';

  @override
  String get moodMorningSunny => 's\'étire';

  @override
  String get moodMorningCloudy => 'se réveille';

  @override
  String get moodMorningHazy => 'profite de la brume';

  @override
  String get moodMorningRainy => 'chante sous la pluie';

  @override
  String get moodMorningSnowy => 'attrape des flocons';

  @override
  String get moodDaySunny => 'prend le soleil';

  @override
  String get moodDayCloudy => 'pique-nique';

  @override
  String get moodDayHazy => 'rêvasse';

  @override
  String get moodDayRainy => 'danse sous la pluie';

  @override
  String get moodDaySnowy => 'lance des boules de neige';

  @override
  String get moodSunsetSunny => 'regarde le coucher du soleil';

  @override
  String get moodSunsetCloudy => 'regarde le coucher du soleil';

  @override
  String get moodSunsetHazy => 'regarde le coucher du soleil';

  @override
  String get moodSunsetRainy => 'écoute la pluie';

  @override
  String get moodSunsetSnowy => 'se réchauffe';

  @override
  String get moodNightSunny => 'observe les étoiles';

  @override
  String get moodNightCloudy => 'rêve';

  @override
  String get moodNightHazy => 'rêve';

  @override
  String get moodNightRainy => 'somnole sous la pluie';

  @override
  String get moodNightSnowy => 'dort au chaud';

  @override
  String get moodNightAwakeSunny => 'observe les étoiles';

  @override
  String get moodNightAwakeCloudy => 'fait un pique-nique nocturne';

  @override
  String get moodNightAwakeHazy => 'contemple la lune';

  @override
  String get moodNightAwakeRainy => 'danse sous la pluie nocturne';

  @override
  String get moodNightAwakeSnowy => 'joue dans la neige nocturne';
}
