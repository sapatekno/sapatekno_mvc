// File: test/controllers/resource_controller_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

// Ganti path import sesuai struktur proyek Anda
import 'package:sapatekno_mvc/app/controllers/resource_controller.dart';
import 'package:sapatekno_mvc/app/models/resource_model.dart';
import 'package:sapatekno_mvc/core/api/dio_client.dart';
import 'package:sapatekno_mvc/core/cache/database_helper.dart';
import 'package:sapatekno_mvc/core/services/connectivity_service.dart';
import 'package:sapatekno_mvc/core/services/service_locator.dart';

import 'resource_controller_test.mocks.dart';

// Jalankan `flutter pub run build_runner build` untuk generate mock file
@GenerateMocks([DioClient, DatabaseHelper, ConnectivityService])
void main() {
  late ResourceController controller;
  late MockDioClient mockDioClient;
  late MockDatabaseHelper mockDbHelper;
  late MockConnectivityService mockConnectivity;

  setUpAll(() {
    // Setup Service Locator untuk testing
    sl.registerLazySingleton<DioClient>(() => MockDioClient());
    sl.registerLazySingleton<DatabaseHelper>(() => MockDatabaseHelper());
    sl.registerLazySingleton<ConnectivityService>(() => MockConnectivityService());
  });

  setUp(() {
    mockDioClient = sl<DioClient>() as MockDioClient;
    mockDbHelper = sl<DatabaseHelper>() as MockDatabaseHelper;
    mockConnectivity = sl<ConnectivityService>() as MockConnectivityService;

    // Reset mock sebelum setiap test
    reset(mockDioClient);
    reset(mockDbHelper);
    reset(mockConnectivity);

    // Stubbing default behavior
    when(mockConnectivity.isConnected).thenReturn(true);
    when(mockConnectivity.addListener(any)).thenReturn(null);

    controller = ResourceController();
  });

  final tResource = Resource(id: 1, name: 'cerulean', year: 2000, color: '#98B2D1', pantoneValue: '15-4020');
  final tResourceResponse = ResourceResponse(page: 1, perPage: 6, total: 12, totalPages: 2, data: [tResource]);

  test('should fetch resources from API when online', () async {
    // Arrange
    when(mockDioClient.get(any)).thenAnswer((_) async => Response(
      requestOptions: RequestOptions(path: ''),
      data: tResourceResponse.toJson(),
      statusCode: 200,
    ));
    when(mockDbHelper.cacheResources(any)).thenAnswer((_) async => Future.value());

    // Act
    await controller.fetchResources();

    // Assert
    expect(controller.resources, [tResource]);
    expect(controller.isLoading, isFalse);
    expect(controller.error, isNull);
    verify(mockDioClient.get(any)).called(1);
    verify(mockDbHelper.cacheResources([tResource])).called(1);
  });

  test('should load resources from cache when offline', () async {
    // Arrange
    when(mockConnectivity.isConnected).thenReturn(false);
    when(mockDbHelper.getCachedResources()).thenAnswer((_) async => [tResource]);

    // Act
    await controller.fetchResources();

    // Assert
    expect(controller.resources, [tResource]);
    expect(controller.isLoading, isFalse);
    expect(controller.error, isNull);
    verifyNever(mockDioClient.get(any));
    verify(mockDbHelper.getCachedResources()).called(1);
  });
}