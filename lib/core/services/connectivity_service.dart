// File: lib/core/services/connectivity_service.dart
// Deskripsi: Memantau status koneksi internet secara realtime.
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

class ConnectivityService with ChangeNotifier {
  final Connectivity _connectivity = Connectivity();
  bool _isConnected = true;
  late StreamSubscription<List<ConnectivityResult>> _subscription;

  bool get isConnected => _isConnected;

  void initialize() {
    _subscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    checkInitialConnection();
  }

  Future<void> checkInitialConnection() async {
    final result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
  }

  void _updateConnectionStatus(List<ConnectivityResult> result) {
    final hasConnection = !result.contains(ConnectivityResult.none);
    if (_isConnected != hasConnection) {
      _isConnected = hasConnection;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}