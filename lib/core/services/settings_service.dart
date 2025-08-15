// File: lib/core/services/settings_service.dart
// Deskripsi: Mengelola penyimpanan tema dan bahasa di SharedPreferences.
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  final SharedPreferences _prefs;

  SettingsService(this._prefs);

  static const _themeKey = 'theme_mode';
  static const _localeKey = 'locale_code';

  Future<void> saveThemeMode(ThemeMode mode) async {
    await _prefs.setString(_themeKey, mode.name);
  }

  ThemeMode loadThemeMode() {
    final themeName = _prefs.getString(_themeKey);
    return ThemeMode.values.firstWhere(
          (e) => e.name == themeName,
      orElse: () => ThemeMode.system,
    );
  }

  Future<void> saveLocale(Locale locale) async {
    await _prefs.setString(_localeKey, locale.languageCode);
  }

  Locale loadLocale() {
    final code = _prefs.getString(_localeKey);
    if (code == 'id') {
      return const Locale('id');
    }
    return const Locale('en');
  }
}