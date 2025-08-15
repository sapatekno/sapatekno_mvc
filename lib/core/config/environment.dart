// File: lib/core/config/environment.dart
// Deskripsi: Enum untuk membedakan environment.
enum Environment { development, staging, production }

// File: lib/core/constants/api_constants.dart
// Deskripsi: Menyimpan semua URL endpoint.
class ApiConstants {
  static const String baseUrl = 'https://reqres.in/api';
  static const String unknownResources = '/unknown';
}