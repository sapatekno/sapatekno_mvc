// File: lib/app/models/resource_model.dart
// Deskripsi: Model data untuk resource dari reqres.in.
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_model.freezed.dart';

part 'resource_model.g.dart';

// Model untuk response API secara keseluruhan
@freezed
abstract class ResourceResponse with _$ResourceResponse {
  const factory ResourceResponse({
    required int page,
    required int perPage,
    required int total,
    required int totalPages,
    required List<Resource> data,
  }) = _ResourceResponse;

  factory ResourceResponse.fromJson(Map<String, dynamic> json) => _$ResourceResponseFromJson(json);
}

// Model untuk satu item resource
@freezed
abstract class Resource with _$Resource {
  const factory Resource({
    required int id,
    required String name,
    required int year,
    required String color,
    required String pantoneValue,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);
}
