// File: lib/app/controllers/locale_controller.dart
import 'package:flutter/material.dart';
import '../../core/services/service_locator.dart';
import '../../core/services/settings_service.dart';

class LocaleController with ChangeNotifier {
  final SettingsService _settingsService = sl<SettingsService>();
  late Locale _locale;

  Locale get locale => _locale;

  LocaleController() {
    _locale = _settingsService.loadLocale();
  }

  void setLocale(Locale newLocale) {
    if (_locale == newLocale) return;
    _locale = newLocale;
    _settingsService.saveLocale(newLocale);
    notifyListeners();
  }
}