// File: lib/core/services/service_locator.dart
// Deskripsi: Pusat registrasi semua service (Dependency Injection).
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import '../api/dio_client.dart';
import '../cache/database_helper.dart';
import '../config/environment.dart';
import 'settings_service.dart';
import 'connectivity_service.dart';

final sl = GetIt.instance;

Future<void> setupLocator({required Environment environment}) async {
  // Environment
  sl.registerLazySingleton<Environment>(() => environment);

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  final db = await openDatabase(
    join(await getDatabasesPath(), 'app_database.db'),
    version: 1,
    onCreate: (db, version) {
      return db.execute('CREATE TABLE resources(id INTEGER PRIMARY KEY, name TEXT, year INTEGER, color TEXT, pantone_value TEXT, cached_at INTEGER)');
    },
  );
  sl.registerLazySingleton(() => db);

  final dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl, headers: {'x-api-key': 'reqres-free-v1'}));
  // Tambahkan Chucker Interceptor hanya pada mode development
  if (environment == Environment.development) {
    dio.interceptors.add(ChuckerDioInterceptor());
  }
  sl.registerLazySingleton(() => dio);

  // Services
  sl.registerLazySingleton(() => SettingsService(sl()));
  sl.registerLazySingleton(() => ConnectivityService()..initialize());

  // API Client
  sl.registerLazySingleton(() => DioClient(sl()));

  // Database Helper
  sl.registerLazySingleton(() => DatabaseHelper(sl()));
}
