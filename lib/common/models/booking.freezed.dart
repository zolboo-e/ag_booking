// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Booking {
  String get id => throw _privateConstructorUsedError;
  Organization get organization => throw _privateConstructorUsedError;
  ServiceCenter get serviceCenter => throw _privateConstructorUsedError;
  Service get service => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Organization organization,
      ServiceCenter serviceCenter,
      Service service,
      DateTime startDate,
      DateTime endDate});

  $OrganizationCopyWith<$Res> get organization;
  $ServiceCenterCopyWith<$Res> get serviceCenter;
  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res> implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  final Booking _value;
  // ignore: unused_field
  final $Res Function(Booking) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? organization = freezed,
    Object? serviceCenter = freezed,
    Object? service = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
      serviceCenter: serviceCenter == freezed
          ? _value.serviceCenter
          : serviceCenter // ignore: cast_nullable_to_non_nullable
              as ServiceCenter,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $OrganizationCopyWith<$Res> get organization {
    return $OrganizationCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value));
    });
  }

  @override
  $ServiceCenterCopyWith<$Res> get serviceCenter {
    return $ServiceCenterCopyWith<$Res>(_value.serviceCenter, (value) {
      return _then(_value.copyWith(serviceCenter: value));
    });
  }

  @override
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$_BookingCopyWith(
          _$_Booking value, $Res Function(_$_Booking) then) =
      __$$_BookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Organization organization,
      ServiceCenter serviceCenter,
      Service service,
      DateTime startDate,
      DateTime endDate});

  @override
  $OrganizationCopyWith<$Res> get organization;
  @override
  $ServiceCenterCopyWith<$Res> get serviceCenter;
  @override
  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$_BookingCopyWithImpl<$Res> extends _$BookingCopyWithImpl<$Res>
    implements _$$_BookingCopyWith<$Res> {
  __$$_BookingCopyWithImpl(_$_Booking _value, $Res Function(_$_Booking) _then)
      : super(_value, (v) => _then(v as _$_Booking));

  @override
  _$_Booking get _value => super._value as _$_Booking;

  @override
  $Res call({
    Object? id = freezed,
    Object? organization = freezed,
    Object? serviceCenter = freezed,
    Object? service = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_Booking(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
      serviceCenter: serviceCenter == freezed
          ? _value.serviceCenter
          : serviceCenter // ignore: cast_nullable_to_non_nullable
              as ServiceCenter,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Booking implements _Booking {
  const _$_Booking(
      {required this.id,
      required this.organization,
      required this.serviceCenter,
      required this.service,
      required this.startDate,
      required this.endDate});

  @override
  final String id;
  @override
  final Organization organization;
  @override
  final ServiceCenter serviceCenter;
  @override
  final Service service;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'Booking(id: $id, organization: $organization, serviceCenter: $serviceCenter, service: $service, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Booking &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.organization, organization) &&
            const DeepCollectionEquality()
                .equals(other.serviceCenter, serviceCenter) &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(organization),
      const DeepCollectionEquality().hash(serviceCenter),
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      __$$_BookingCopyWithImpl<_$_Booking>(this, _$identity);
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {required final String id,
      required final Organization organization,
      required final ServiceCenter serviceCenter,
      required final Service service,
      required final DateTime startDate,
      required final DateTime endDate}) = _$_Booking;

  @override
  String get id;
  @override
  Organization get organization;
  @override
  ServiceCenter get serviceCenter;
  @override
  Service get service;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      throw _privateConstructorUsedError;
}
