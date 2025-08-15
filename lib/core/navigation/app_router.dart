// File: lib/core/navigation/app_router.dart
// Deskripsi: Konfigurasi routing menggunakan go_router.
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import '../../app/views/screens/resource_list_screen.dart';
import '../../app/views/screens/settings_screen.dart';
import '../../app/views/widgets/scaffold_with_nav.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/resources',
  observers: [
    // Tambahkan Chucker observer untuk akses dari UI
    ChuckerFlutter.navigatorObserver,
  ],
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNav(child: child);
      },
      routes: [
        GoRoute(
          path: '/resources',
          builder: (context, state) => const ResourceListScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);