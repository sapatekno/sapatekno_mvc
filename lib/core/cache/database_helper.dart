// File: lib/core/cache/database_helper.dart
// Deskripsi: Mengelola operasi database (SQFlite) untuk caching.
import 'package:sqflite/sqflite.dart';
import '../../app/models/resource_model.dart';

class DatabaseHelper {
  final Database _db;
  // Cache valid selama 5 menit
  final int cacheDurationInSeconds = 5 * 60;

  DatabaseHelper(this._db);

  Future<void> cacheResources(List<Resource> resources) async {
    await _db.transaction((txn) async {
      await txn.delete('resources'); // Hapus cache lama
      final batch = txn.batch();
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      for (var resource in resources) {
        batch.insert(
          'resources',
          resource.toJson()..['cached_at'] = now,
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
      await batch.commit(noResult: true);
    });
  }

  Future<List<Resource>> getCachedResources() async {
    final List<Map<String, dynamic>> maps = await _db.query('resources');

    if (maps.isNotEmpty) {
      // Cek validitas cache
      final firstRecord = maps.first;
      final cachedAt = firstRecord['cached_at'] as int;
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      if ((now - cachedAt) < cacheDurationInSeconds) {
        return List.generate(maps.length, (i) {
          return Resource.fromJson(maps[i]);
        });
      }
    }
    // Return list kosong jika cache tidak ada atau sudah expired
    return [];
  }
}