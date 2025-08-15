// File: lib/core/api/dio_client.dart
// Deskripsi: Wrapper untuk Dio, mengelola request HTTP dan error.
import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio);

  Future<Response> get(String path) async {
    try {
      final response = await _dio.get(path);
      return response;
    } on DioException catch (e) {
      // Mengelola error di sini agar tidak crash.
      // Anda bisa menambahkan logging atau logic lain.
      throw Exception('Failed to load data: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred.');
    }
  }
}