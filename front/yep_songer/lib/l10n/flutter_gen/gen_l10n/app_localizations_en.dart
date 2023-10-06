


import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get landingTitle => 'Looking for inspiration';

  @override
  String get landingSubTitle => 'You first have to connect using your account to enjoy the service.';

  @override
  String get connectPhone => 'Connect with your number';

  @override
  String get connectMail => 'Connect with your mail';

  @override
  String get register => 'Register';

  @override
  String get welcome => 'Welcome back !';

  @override
  String get connect => 'Connect';

  @override
  String get number => 'Phone number';

  @override
  String get password => 'Password';

  @override
  String get validate => 'validate';

  @override
  String get noAccount => 'Vous n\'avez pas de compte ?';

  @override
  String get email => 'email';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get pseudoError => 'The pseudo must have at least 6 characters.';

  @override
  String get emailError => 'Email is incorrect';

  @override
  String get numberError => 'This number isn\'t accepted';

  @override
  String get passwordError => 'Passwords aren\'t identical';

  @override
  String get passwordInfo => 'Password must be at least 8 characters';

  @override
  String get home => 'Home';

  @override
  String get kind => 'Kind';

  @override
  String get history => 'History';

  @override
  String get selectTag => 'Select wich style we should recommand.';

  @override
  String get darkMode => 'Dark mode';
}
