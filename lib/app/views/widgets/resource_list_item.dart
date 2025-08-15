// File: lib/app/views/widgets/resource_list_item.dart
import 'package:flutter/material.dart';
import '../../models/resource_model.dart';

class ResourceListItem extends StatelessWidget {
  final Resource resource;

  const ResourceListItem({super.key, required this.resource});

  @override
  Widget build(BuildContext context) {
    // Mengambil warna dari string hex
    final color = Color(int.parse(resource.color.substring(1, 7), radix: 16) + 0xFF000000);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
        ),
        title: Text(resource.name),
        subtitle: Text('Year: ${resource.year} - ${resource.pantoneValue}'),
        trailing: Text('#${resource.id}'),
      ),
    );
  }
}