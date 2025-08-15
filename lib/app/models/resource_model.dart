// File: lib/app/models/resource_model.dart
// Deskripsi: Model data untuk resource menggunakan Equatable dan JsonSerializable.
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_model.g.dart';

// Model untuk response API secara keseluruhan
@JsonSerializable()
class ResourceResponse extends Equatable {
  final int page;
  @JsonKey(name: 'per_page') // Sesuaikan dengan nama field di JSON jika berbeda
  final int perPage;
  final int total;
  @JsonKey(name: 'total_pages') // Sesuaikan dengan nama field di JSON jika berbeda
  final int totalPages;
  final List<Resource> data;

  const ResourceResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory ResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$ResourceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceResponseToJson(this);

  @override
  List<Object?> get props => [page, perPage, total, totalPages, data];
}

// Model untuk satu item resource
@JsonSerializable()
class Resource extends Equatable {
  final int id;
  final String name;
  final int year;
  final String color;
  @JsonKey(name: 'pantone_value') // Sesuaikan dengan nama field di JSON
  final String pantoneValue;

  const Resource({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    required this.pantoneValue,
  });

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceToJson(this);

  @override
  List<Object?> get props => [id, name, year, color, pantoneValue];
}