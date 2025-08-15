// File: lib/app/controllers/theme_controller.dart
import 'package:flutter/material.dart';
import '../../core/services/service_locator.dart';
import '../../core/services/settings_service.dart';

class ThemeController with ChangeNotifier {
  final SettingsService _settingsService = sl<SettingsService>();
  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  ThemeController() {
    _themeMode = _settingsService.loadThemeMode();
  }

  void setThemeMode(ThemeMode mode) {
    if (_themeMode == mode) return;
    _themeMode = mode;
    _settingsService.saveThemeMode(mode);
    notifyListeners();
  }
}