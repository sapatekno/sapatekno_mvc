// File: lib/main/main_development.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import '../core/config/environment.dart';
import '../core/services/service_locator.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // Inisialisasi factory database FFI
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  await setupLocator(environment: Environment.development);
  runApp(const MyApp());
}