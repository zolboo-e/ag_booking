// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'availability_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AvailabilityProvider {
  String? get serviceId => throw _privateConstructorUsedError;
  String? get serviceCenterId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvailabilityProviderCopyWith<AvailabilityProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityProviderCopyWith<$Res> {
  factory $AvailabilityProviderCopyWith(AvailabilityProvider value,
          $Res Function(AvailabilityProvider) then) =
      _$AvailabilityProviderCopyWithImpl<$Res>;
  $Res call({String? serviceId, String? serviceCenterId, DateTime? date});
}

/// @nodoc
class _$AvailabilityProviderCopyWithImpl<$Res>
    implements $AvailabilityProviderCopyWith<$Res> {
  _$AvailabilityProviderCopyWithImpl(this._value, this._then);

  final AvailabilityProvider _value;
  // ignore: unused_field
  final $Res Function(AvailabilityProvider) _then;

  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceCenterId = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCenterId: serviceCenterId == freezed
          ? _value.serviceCenterId
          : serviceCenterId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_AvailabilityProviderCopyWith<$Res>
    implements $AvailabilityProviderCopyWith<$Res> {
  factory _$$_AvailabilityProviderCopyWith(_$_AvailabilityProvider value,
          $Res Function(_$_AvailabilityProvider) then) =
      __$$_AvailabilityProviderCopyWithImpl<$Res>;
  @override
  $Res call({String? serviceId, String? serviceCenterId, DateTime? date});
}

/// @nodoc
class __$$_AvailabilityProviderCopyWithImpl<$Res>
    extends _$AvailabilityProviderCopyWithImpl<$Res>
    implements _$$_AvailabilityProviderCopyWith<$Res> {
  __$$_AvailabilityProviderCopyWithImpl(_$_AvailabilityProvider _value,
      $Res Function(_$_AvailabilityProvider) _then)
      : super(_value, (v) => _then(v as _$_AvailabilityProvider));

  @override
  _$_AvailabilityProvider get _value => super._value as _$_AvailabilityProvider;

  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceCenterId = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_AvailabilityProvider(
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCenterId: serviceCenterId == freezed
          ? _value.serviceCenterId
          : serviceCenterId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_AvailabilityProvider implements _AvailabilityProvider {
  const _$_AvailabilityProvider(
      {required this.serviceId,
      required this.serviceCenterId,
      required this.date});

  @override
  final String? serviceId;
  @override
  final String? serviceCenterId;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'AvailabilityProvider(serviceId: $serviceId, serviceCenterId: $serviceCenterId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailabilityProvider &&
            const DeepCollectionEquality().equals(other.serviceId, serviceId) &&
            const DeepCollectionEquality()
                .equals(other.serviceCenterId, serviceCenterId) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serviceId),
      const DeepCollectionEquality().hash(serviceCenterId),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_AvailabilityProviderCopyWith<_$_AvailabilityProvider> get copyWith =>
      __$$_AvailabilityProviderCopyWithImpl<_$_AvailabilityProvider>(
          this, _$identity);
}

abstract class _AvailabilityProvider implements AvailabilityProvider {
  const factory _AvailabilityProvider(
      {required final String? serviceId,
      required final String? serviceCenterId,
      required final DateTime? date}) = _$_AvailabilityProvider;

  @override
  String? get serviceId;
  @override
  String? get serviceCenterId;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_AvailabilityProviderCopyWith<_$_AvailabilityProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
