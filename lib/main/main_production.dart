// File: lib/main/main_production.dart
import 'package:flutter/material.dart';
import '../core/config/environment.dart';
import '../core/services/service_locator.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(environment: Environment.production);
  runApp(const MyApp());
}