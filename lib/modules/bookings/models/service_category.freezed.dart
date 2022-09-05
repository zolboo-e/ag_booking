// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  List<ServiceCategory> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceCategoryCopyWith<ServiceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCategoryCopyWith<$Res> {
  factory $ServiceCategoryCopyWith(
          ServiceCategory value, $Res Function(ServiceCategory) then) =
      _$ServiceCategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String parentId,
      List<ServiceCategory> children});
}

/// @nodoc
class _$ServiceCategoryCopyWithImpl<$Res>
    implements $ServiceCategoryCopyWith<$Res> {
  _$ServiceCategoryCopyWithImpl(this._value, this._then);

  final ServiceCategory _value;
  // ignore: unused_field
  final $Res Function(ServiceCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceCategoryCopyWith<$Res>
    implements $ServiceCategoryCopyWith<$Res> {
  factory _$$_ServiceCategoryCopyWith(
          _$_ServiceCategory value, $Res Function(_$_ServiceCategory) then) =
      __$$_ServiceCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String parentId,
      List<ServiceCategory> children});
}

/// @nodoc
class __$$_ServiceCategoryCopyWithImpl<$Res>
    extends _$ServiceCategoryCopyWithImpl<$Res>
    implements _$$_ServiceCategoryCopyWith<$Res> {
  __$$_ServiceCategoryCopyWithImpl(
      _$_ServiceCategory _value, $Res Function(_$_ServiceCategory) _then)
      : super(_value, (v) => _then(v as _$_ServiceCategory));

  @override
  _$_ServiceCategory get _value => super._value as _$_ServiceCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_ServiceCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
    ));
  }
}

/// @nodoc

class _$_ServiceCategory implements _ServiceCategory {
  const _$_ServiceCategory(
      {required this.id,
      required this.name,
      required this.parentId,
      required final List<ServiceCategory> children})
      : _children = children;

  @override
  final String id;
  @override
  final String name;
  @override
  final String parentId;
  final List<ServiceCategory> _children;
  @override
  List<ServiceCategory> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ServiceCategory(id: $id, name: $name, parentId: $parentId, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceCategoryCopyWith<_$_ServiceCategory> get copyWith =>
      __$$_ServiceCategoryCopyWithImpl<_$_ServiceCategory>(this, _$identity);
}

abstract class _ServiceCategory implements ServiceCategory {
  const factory _ServiceCategory(
      {required final String id,
      required final String name,
      required final String parentId,
      required final List<ServiceCategory> children}) = _$_ServiceCategory;

  @override
  String get id;
  @override
  String get name;
  @override
  String get parentId;
  @override
  List<ServiceCategory> get children;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCategoryCopyWith<_$_ServiceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
