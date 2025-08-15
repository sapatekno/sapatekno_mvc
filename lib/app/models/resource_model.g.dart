// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResourceResponse _$ResourceResponseFromJson(Map<String, dynamic> json) =>
    _ResourceResponse(
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourceResponseToJson(_ResourceResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_Resource _$ResourceFromJson(Map<String, dynamic> json) => _Resource(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  year: (json['year'] as num).toInt(),
  color: json['color'] as String,
  pantoneValue: json['pantoneValue'] as String,
);

Map<String, dynamic> _$ResourceToJson(_Resource instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'year': instance.year,
  'color': instance.color,
  'pantoneValue': instance.pantoneValue,
};
