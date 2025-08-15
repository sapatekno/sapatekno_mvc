// File: lib/main/app.dart (File utama aplikasi)
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app/controllers/locale_controller.dart';
import '../app/controllers/theme_controller.dart';
import '../core/navigation/app_router.dart';
import '../core/services/connectivity_service.dart';
import '../core/services/service_locator.dart';
import '../l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Menyediakan semua controller/service global di sini
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController()),
        ChangeNotifierProvider(create: (_) => LocaleController()),
        ChangeNotifierProvider.value(value: sl<ConnectivityService>()),
      ],
      child: Consumer2<ThemeController, LocaleController>(
        builder: (context, theme, locale, child) {
          return MaterialApp.router(
            routerConfig: router,
            title: 'Flutter MVC Skeleton',
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: theme.themeMode,
            locale: locale.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}