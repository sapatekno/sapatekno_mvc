// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResourceResponse {

 int get page; int get perPage; int get total; int get totalPages; List<Resource> get data;
/// Create a copy of ResourceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceResponseCopyWith<ResourceResponse> get copyWith => _$ResourceResponseCopyWithImpl<ResourceResponse>(this as ResourceResponse, _$identity);

  /// Serializes this ResourceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceResponse&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,total,totalPages,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ResourceResponse(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
}


}

/// @nodoc
abstract mixin class $ResourceResponseCopyWith<$Res>  {
  factory $ResourceResponseCopyWith(ResourceResponse value, $Res Function(ResourceResponse) _then) = _$ResourceResponseCopyWithImpl;
@useResult
$Res call({
 int page, int perPage, int total, int totalPages, List<Resource> data
});




}
/// @nodoc
class _$ResourceResponseCopyWithImpl<$Res>
    implements $ResourceResponseCopyWith<$Res> {
  _$ResourceResponseCopyWithImpl(this._self, this._then);

  final ResourceResponse _self;
  final $Res Function(ResourceResponse) _then;

/// Create a copy of ResourceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? total = null,Object? totalPages = null,Object? data = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Resource>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResourceResponse].
extension ResourceResponsePatterns on ResourceResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResourceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResourceResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResourceResponse value)  $default,){
final _that = this;
switch (_that) {
case _ResourceResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResourceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ResourceResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int perPage,  int total,  int totalPages,  List<Resource> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResourceResponse() when $default != null:
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int perPage,  int total,  int totalPages,  List<Resource> data)  $default,) {final _that = this;
switch (_that) {
case _ResourceResponse():
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int perPage,  int total,  int totalPages,  List<Resource> data)?  $default,) {final _that = this;
switch (_that) {
case _ResourceResponse() when $default != null:
return $default(_that.page,_that.perPage,_that.total,_that.totalPages,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResourceResponse implements ResourceResponse {
  const _ResourceResponse({required this.page, required this.perPage, required this.total, required this.totalPages, required final  List<Resource> data}): _data = data;
  factory _ResourceResponse.fromJson(Map<String, dynamic> json) => _$ResourceResponseFromJson(json);

@override final  int page;
@override final  int perPage;
@override final  int total;
@override final  int totalPages;
 final  List<Resource> _data;
@override List<Resource> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ResourceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceResponseCopyWith<_ResourceResponse> get copyWith => __$ResourceResponseCopyWithImpl<_ResourceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResourceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResourceResponse&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,total,totalPages,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ResourceResponse(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ResourceResponseCopyWith<$Res> implements $ResourceResponseCopyWith<$Res> {
  factory _$ResourceResponseCopyWith(_ResourceResponse value, $Res Function(_ResourceResponse) _then) = __$ResourceResponseCopyWithImpl;
@override @useResult
$Res call({
 int page, int perPage, int total, int totalPages, List<Resource> data
});




}
/// @nodoc
class __$ResourceResponseCopyWithImpl<$Res>
    implements _$ResourceResponseCopyWith<$Res> {
  __$ResourceResponseCopyWithImpl(this._self, this._then);

  final _ResourceResponse _self;
  final $Res Function(_ResourceResponse) _then;

/// Create a copy of ResourceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? total = null,Object? totalPages = null,Object? data = null,}) {
  return _then(_ResourceResponse(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Resource>,
  ));
}


}


/// @nodoc
mixin _$Resource {

 int get id; String get name; int get year; String get color; String get pantoneValue;
/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceCopyWith<Resource> get copyWith => _$ResourceCopyWithImpl<Resource>(this as Resource, _$identity);

  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Resource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.year, year) || other.year == year)&&(identical(other.color, color) || other.color == color)&&(identical(other.pantoneValue, pantoneValue) || other.pantoneValue == pantoneValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,year,color,pantoneValue);

@override
String toString() {
  return 'Resource(id: $id, name: $name, year: $year, color: $color, pantoneValue: $pantoneValue)';
}


}

/// @nodoc
abstract mixin class $ResourceCopyWith<$Res>  {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) _then) = _$ResourceCopyWithImpl;
@useResult
$Res call({
 int id, String name, int year, String color, String pantoneValue
});




}
/// @nodoc
class _$ResourceCopyWithImpl<$Res>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._self, this._then);

  final Resource _self;
  final $Res Function(Resource) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? year = null,Object? color = null,Object? pantoneValue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,pantoneValue: null == pantoneValue ? _self.pantoneValue : pantoneValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Resource].
extension ResourcePatterns on Resource {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Resource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Resource value)  $default,){
final _that = this;
switch (_that) {
case _Resource():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Resource value)?  $default,){
final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int year,  String color,  String pantoneValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that.id,_that.name,_that.year,_that.color,_that.pantoneValue);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int year,  String color,  String pantoneValue)  $default,) {final _that = this;
switch (_that) {
case _Resource():
return $default(_that.id,_that.name,_that.year,_that.color,_that.pantoneValue);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int year,  String color,  String pantoneValue)?  $default,) {final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that.id,_that.name,_that.year,_that.color,_that.pantoneValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Resource implements Resource {
  const _Resource({required this.id, required this.name, required this.year, required this.color, required this.pantoneValue});
  factory _Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);

@override final  int id;
@override final  String name;
@override final  int year;
@override final  String color;
@override final  String pantoneValue;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceCopyWith<_Resource> get copyWith => __$ResourceCopyWithImpl<_Resource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.year, year) || other.year == year)&&(identical(other.color, color) || other.color == color)&&(identical(other.pantoneValue, pantoneValue) || other.pantoneValue == pantoneValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,year,color,pantoneValue);

@override
String toString() {
  return 'Resource(id: $id, name: $name, year: $year, color: $color, pantoneValue: $pantoneValue)';
}


}

/// @nodoc
abstract mixin class _$ResourceCopyWith<$Res> implements $ResourceCopyWith<$Res> {
  factory _$ResourceCopyWith(_Resource value, $Res Function(_Resource) _then) = __$ResourceCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int year, String color, String pantoneValue
});




}
/// @nodoc
class __$ResourceCopyWithImpl<$Res>
    implements _$ResourceCopyWith<$Res> {
  __$ResourceCopyWithImpl(this._self, this._then);

  final _Resource _self;
  final $Res Function(_Resource) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? year = null,Object? color = null,Object? pantoneValue = null,}) {
  return _then(_Resource(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,pantoneValue: null == pantoneValue ? _self.pantoneValue : pantoneValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
