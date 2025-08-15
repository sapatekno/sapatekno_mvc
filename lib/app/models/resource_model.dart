// File: lib/app/models/resource_model.dart
// Deskripsi: Model data untuk resource dari reqres.in.
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_model.freezed.dart';
part 'resource_model.g.dart';

// Model untuk response API secara keseluruhan
@freezed
class ResourceResponse with _$ResourceResponse {
  const factory ResourceResponse({
    required int page,
    required int perPage,
    required int total,
    required int totalPages,
    required List<Resource> data,
  }) = _ResourceResponse;

  factory ResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$ResourceResponseFromJson(json);

  @override
  // TODO: implement data
  List<Resource> get data => throw UnimplementedError();

  @override
  // TODO: implement page
  int get page => throw UnimplementedError();

  @override
  // TODO: implement perPage
  int get perPage => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement total
  int get total => throw UnimplementedError();

  @override
  // TODO: implement totalPages
  int get totalPages => throw UnimplementedError();
}

// Model untuk satu item resource
@freezed
class Resource with _$Resource {
  const factory Resource({
    required int id,
    required String name,
    required int year,
    required String color,
    required String pantoneValue,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  @override
  // TODO: implement color
  String get color => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement pantoneValue
  String get pantoneValue => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement year
  int get year => throw UnimplementedError();
}