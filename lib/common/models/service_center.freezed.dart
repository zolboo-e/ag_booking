// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceCenter {
  String get address => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Organization get parent => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<Service> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceCenterCopyWith<ServiceCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCenterCopyWith<$Res> {
  factory $ServiceCenterCopyWith(
          ServiceCenter value, $Res Function(ServiceCenter) then) =
      _$ServiceCenterCopyWithImpl<$Res>;
  $Res call(
      {String address,
      String id,
      String name,
      Organization parent,
      String phoneNumber,
      List<Service> services});

  $OrganizationCopyWith<$Res> get parent;
}

/// @nodoc
class _$ServiceCenterCopyWithImpl<$Res>
    implements $ServiceCenterCopyWith<$Res> {
  _$ServiceCenterCopyWithImpl(this._value, this._then);

  final ServiceCenter _value;
  // ignore: unused_field
  final $Res Function(ServiceCenter) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? parent = freezed,
    Object? phoneNumber = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Organization,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ));
  }

  @override
  $OrganizationCopyWith<$Res> get parent {
    return $OrganizationCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value));
    });
  }
}

/// @nodoc
abstract class _$$_ServiceCenterCopyWith<$Res>
    implements $ServiceCenterCopyWith<$Res> {
  factory _$$_ServiceCenterCopyWith(
          _$_ServiceCenter value, $Res Function(_$_ServiceCenter) then) =
      __$$_ServiceCenterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      String id,
      String name,
      Organization parent,
      String phoneNumber,
      List<Service> services});

  @override
  $OrganizationCopyWith<$Res> get parent;
}

/// @nodoc
class __$$_ServiceCenterCopyWithImpl<$Res>
    extends _$ServiceCenterCopyWithImpl<$Res>
    implements _$$_ServiceCenterCopyWith<$Res> {
  __$$_ServiceCenterCopyWithImpl(
      _$_ServiceCenter _value, $Res Function(_$_ServiceCenter) _then)
      : super(_value, (v) => _then(v as _$_ServiceCenter));

  @override
  _$_ServiceCenter get _value => super._value as _$_ServiceCenter;

  @override
  $Res call({
    Object? address = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? parent = freezed,
    Object? phoneNumber = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_ServiceCenter(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Organization,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ));
  }
}

/// @nodoc

class _$_ServiceCenter implements _ServiceCenter {
  const _$_ServiceCenter(
      {required this.address,
      required this.id,
      required this.name,
      required this.parent,
      required this.phoneNumber,
      required final List<Service> services})
      : _services = services;

  @override
  final String address;
  @override
  final String id;
  @override
  final String name;
  @override
  final Organization parent;
  @override
  final String phoneNumber;
  final List<Service> _services;
  @override
  List<Service> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceCenter(address: $address, id: $id, name: $name, parent: $parent, phoneNumber: $phoneNumber, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceCenter &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parent),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceCenterCopyWith<_$_ServiceCenter> get copyWith =>
      __$$_ServiceCenterCopyWithImpl<_$_ServiceCenter>(this, _$identity);
}

abstract class _ServiceCenter implements ServiceCenter {
  const factory _ServiceCenter(
      {required final String address,
      required final String id,
      required final String name,
      required final Organization parent,
      required final String phoneNumber,
      required final List<Service> services}) = _$_ServiceCenter;

  @override
  String get address;
  @override
  String get id;
  @override
  String get name;
  @override
  Organization get parent;
  @override
  String get phoneNumber;
  @override
  List<Service> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCenterCopyWith<_$_ServiceCenter> get copyWith =>
      throw _privateConstructorUsedError;
}
