// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get resourceListTitle => 'Resources';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get noData => 'No Data Found';

  @override
  String get themeSetting => 'Theme';

  @override
  String get languageSetting => 'Language';

  @override
  String get themeSystem => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';
}
