// File: lib/app/views/screens/resource_list_screen.dart
// Deskripsi: UI untuk menampilkan daftar resource.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/services/connectivity_service.dart';
import '../../../l10n/app_localizations.dart';
import '../../controllers/resource_controller.dart';
import '../widgets/resource_list_item.dart';
import '../widgets/search_bar_widget.dart';

class ResourceListScreen extends StatelessWidget {
  const ResourceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Menyediakan controller ke widget tree
    return ChangeNotifierProvider(
      create: (_) => ResourceController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.resourceListTitle),
          actions: [
            // Tombol filter
            Consumer<ResourceController>(
              builder: (context, controller, child) {
                final years = controller.resources.map((r) => r.year).toSet().toList();
                years.sort();
                return PopupMenuButton<int>(
                  icon: const Icon(Icons.filter_list),
                  onSelected: (year) {
                    controller.filterByYear(year == 0 ? null : year);
                  },
                  itemBuilder: (context) =>
                  [
                    const PopupMenuItem(value: 0, child: Text('All Years')),
                    ...years.map((y) => PopupMenuItem(value: y, child: Text(y.toString()))),
                  ],
                );
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // Widget untuk search bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<ResourceController>(
                builder: (context, controller, child) {
                  return SearchBarWidget(
                    onChanged: (query) {
                      // Menggunakan context.read untuk memanggil method tanpa listen
                      controller.search(query);
                    },
                  );
                },
              ),
            ),
            // Indikator koneksi internet
            Consumer<ConnectivityService>(
              builder: (context, connectivity, child) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: connectivity.isConnected ? 0 : 30,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'No Internet Connection',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
            // Bagian utama: list, loading, atau error
            Expanded(
              child: Consumer<ResourceController>(
                builder: (context, controller, child) {
                  if (controller.isLoading && controller.resources.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (controller.error != null) {
                    return Center(
                      child: Text('Error: ${controller.error}'),
                    );
                  }
                  if (controller.resources.isEmpty) {
                    return Center(
                      child: Text(AppLocalizations.of(context)!.noData),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () => controller.fetchResources(),
                    child: ListView.builder(
                      itemCount: controller.resources.length,
                      itemBuilder: (context, index) {
                        final resource = controller.resources[index];
                        return ResourceListItem(resource: resource);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}