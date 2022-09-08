// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Service {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res>;
  $Res call({String id, String name, String parentId, int price});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  final Service _value;
  // ignore: unused_field
  final $Res Function(Service) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? price = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String parentId, int price});
}

/// @nodoc
class __$$_ServiceCopyWithImpl<$Res> extends _$ServiceCopyWithImpl<$Res>
    implements _$$_ServiceCopyWith<$Res> {
  __$$_ServiceCopyWithImpl(_$_Service _value, $Res Function(_$_Service) _then)
      : super(_value, (v) => _then(v as _$_Service));

  @override
  _$_Service get _value => super._value as _$_Service;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Service(
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Service implements _Service {
  const _$_Service(
      {required this.id,
      required this.name,
      required this.parentId,
      required this.price});

  @override
  final String id;
  @override
  final String name;
  @override
  final String parentId;
  @override
  final int price;

  @override
  String toString() {
    return 'Service(id: $id, name: $name, parentId: $parentId, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      __$$_ServiceCopyWithImpl<_$_Service>(this, _$identity);
}

abstract class _Service implements Service {
  const factory _Service(
      {required final String id,
      required final String name,
      required final String parentId,
      required final int price}) = _$_Service;

  @override
  String get id;
  @override
  String get name;
  @override
  String get parentId;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
