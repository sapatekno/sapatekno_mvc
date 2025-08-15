// File: lib/app/controllers/resource_controller.dart
// Deskripsi: Mengelola state dan logika untuk fitur resource.
import 'package:flutter/foundation.dart';
import '../models/resource_model.dart';
import '../../core/api/dio_client.dart';
import '../../core/cache/database_helper.dart';
import '../../core/constants/api_constants.dart';
import '../../core/services/service_locator.dart';
import '../../core/services/connectivity_service.dart';

class ResourceController with ChangeNotifier {
  final DioClient _dioClient = sl<DioClient>();
  final DatabaseHelper _dbHelper = sl<DatabaseHelper>();
  final ConnectivityService _connectivity = sl<ConnectivityService>();

  // State
  bool _isLoading = false;
  String? _error;
  List<Resource> _allResources = [];
  List<Resource> _filteredResources = [];

  // Getters
  bool get isLoading => _isLoading;
  String? get error => _error;
  List<Resource> get resources => _filteredResources;

  ResourceController() {
    // Dengarkan perubahan konektivitas
    _connectivity.addListener(fetchResources);
    fetchResources();
  }

  Future<void> fetchResources() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      if (_connectivity.isConnected) {
        // Online: Ambil dari API
        final response = await _dioClient.get(ApiConstants.unknownResources);
        final resourceResponse = ResourceResponse.fromJson(response.data);
        _allResources = resourceResponse.data;
        await _dbHelper.cacheResources(_allResources);
      } else {
        // Offline: Coba ambil dari cache
        _allResources = await _dbHelper.getCachedResources();
        if (_allResources.isEmpty) {
          throw Exception('No internet connection and no cache available.');
        }
      }
      _filteredResources = _allResources;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void search(String query) {
    if (query.isEmpty) {
      _filteredResources = _allResources;
    } else {
      _filteredResources = _allResources
          .where((r) =>
      r.name.toLowerCase().contains(query.toLowerCase()) ||
          r.year.toString().contains(query))
          .toList();
    }
    notifyListeners();
  }

  void filterByYear(int? year) {
    if (year == null) {
      _filteredResources = _allResources;
    } else {
      _filteredResources = _allResources.where((r) => r.year == year).toList();
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _connectivity.removeListener(fetchResources);
    super.dispose();
  }
}