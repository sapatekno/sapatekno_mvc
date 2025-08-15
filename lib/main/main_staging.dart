// File: lib/main/main_staging.dart
import 'package:flutter/material.dart';
import '../core/config/environment.dart';
import '../core/services/service_locator.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(environment: Environment.staging);
  runApp(const MyApp());
}
