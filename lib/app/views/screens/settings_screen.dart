// File: lib/app/views/screens/settings_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../l10n/app_localizations.dart';
import '../../controllers/locale_controller.dart';
import '../../controllers/theme_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = context.watch<ThemeController>();
    final localeController = context.watch<LocaleController>();
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsTitle),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(l10n.themeSetting),
            trailing: DropdownButton<ThemeMode>(
              value: themeController.themeMode,
              onChanged: (ThemeMode? newValue) {
                if (newValue != null) {
                  context.read<ThemeController>().setThemeMode(newValue);
                }
              },
              items: [
                DropdownMenuItem(value: ThemeMode.system, child: Text(l10n.themeSystem)),
                DropdownMenuItem(value: ThemeMode.light, child: Text(l10n.themeLight)),
                DropdownMenuItem(value: ThemeMode.dark, child: Text(l10n.themeDark)),
              ],
            ),
          ),
          ListTile(
            title: Text(l10n.languageSetting),
            trailing: DropdownButton<Locale>(
              value: localeController.locale,
              onChanged: (Locale? newValue) {
                if (newValue != null) {
                  context.read<LocaleController>().setLocale(newValue);
                }
              },
              items: const [
                DropdownMenuItem(value: Locale('en'), child: Text('English')),
                DropdownMenuItem(value: Locale('id'), child: Text('Indonesia')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}