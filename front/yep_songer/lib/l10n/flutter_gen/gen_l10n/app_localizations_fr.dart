


import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get landingTitle => 'A la recherche d\'inspi';

  @override
  String get landingSubTitle => 'Il faut d\'abord se connecter pour pouvoir en profiter';

  @override
  String get connectPhone => 'Se connecter avec votre numéro de téléphone';

  @override
  String get connectMail => 'Se connecter avec votre email';

  @override
  String get register => 'S\'inscrire';

  @override
  String get welcome => 'Bon retour !';

  @override
  String get connect => 'Connectez vous';

  @override
  String get number => 'Numéro de téléphone';

  @override
  String get password => 'Mot de passe';

  @override
  String get validate => 'Valider';

  @override
  String get noAccount => 'Valider';

  @override
  String get email => 'email';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get pseudoError => 'Le pseudo doit faire plus de 6 charactères';

  @override
  String get emailError => 'L\'email est incorrect';

  @override
  String get numberError => 'Ce numéro n\'est pas accepté';

  @override
  String get passwordError => 'Les mots de passe ne sont pas identiques';

  @override
  String get passwordInfo => 'Votre mot de passe doit faire plus de 8 charactères';

  @override
  String get home => 'Accueil';

  @override
  String get kind => 'Genre';

  @override
  String get history => 'Historique';

  @override
  String get selectTag => 'Sélectionner les genres influents sur vos recommandations';

  @override
  String get darkMode => 'Mode sombre';
}
