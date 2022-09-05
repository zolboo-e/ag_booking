// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceCategories {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ServiceCategory> categories) data,
    required TResult Function() loading,
    required TResult Function(DioError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCategoriesData value) data,
    required TResult Function(ServiceCategoriesLoading value) loading,
    required TResult Function(ServiceCategoriesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCategoriesCopyWith<$Res> {
  factory $ServiceCategoriesCopyWith(
          ServiceCategories value, $Res Function(ServiceCategories) then) =
      _$ServiceCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceCategoriesCopyWithImpl<$Res>
    implements $ServiceCategoriesCopyWith<$Res> {
  _$ServiceCategoriesCopyWithImpl(this._value, this._then);

  final ServiceCategories _value;
  // ignore: unused_field
  final $Res Function(ServiceCategories) _then;
}

/// @nodoc
abstract class _$$ServiceCategoriesDataCopyWith<$Res> {
  factory _$$ServiceCategoriesDataCopyWith(_$ServiceCategoriesData value,
          $Res Function(_$ServiceCategoriesData) then) =
      __$$ServiceCategoriesDataCopyWithImpl<$Res>;
  $Res call({List<ServiceCategory> categories});
}

/// @nodoc
class __$$ServiceCategoriesDataCopyWithImpl<$Res>
    extends _$ServiceCategoriesCopyWithImpl<$Res>
    implements _$$ServiceCategoriesDataCopyWith<$Res> {
  __$$ServiceCategoriesDataCopyWithImpl(_$ServiceCategoriesData _value,
      $Res Function(_$ServiceCategoriesData) _then)
      : super(_value, (v) => _then(v as _$ServiceCategoriesData));

  @override
  _$ServiceCategoriesData get _value => super._value as _$ServiceCategoriesData;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$ServiceCategoriesData(
      categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
    ));
  }
}

/// @nodoc

class _$ServiceCategoriesData implements ServiceCategoriesData {
  const _$ServiceCategoriesData(final List<ServiceCategory> categories)
      : _categories = categories;

  final List<ServiceCategory> _categories;
  @override
  List<ServiceCategory> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ServiceCategories.data(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCategoriesData &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  _$$ServiceCategoriesDataCopyWith<_$ServiceCategoriesData> get copyWith =>
      __$$ServiceCategoriesDataCopyWithImpl<_$ServiceCategoriesData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ServiceCategory> categories) data,
    required TResult Function() loading,
    required TResult Function(DioError error) error,
  }) {
    return data(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
  }) {
    return data?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCategoriesData value) data,
    required TResult Function(ServiceCategoriesLoading value) loading,
    required TResult Function(ServiceCategoriesError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ServiceCategoriesData implements ServiceCategories {
  const factory ServiceCategoriesData(final List<ServiceCategory> categories) =
      _$ServiceCategoriesData;

  List<ServiceCategory> get categories;
  @JsonKey(ignore: true)
  _$$ServiceCategoriesDataCopyWith<_$ServiceCategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceCategoriesLoadingCopyWith<$Res> {
  factory _$$ServiceCategoriesLoadingCopyWith(_$ServiceCategoriesLoading value,
          $Res Function(_$ServiceCategoriesLoading) then) =
      __$$ServiceCategoriesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCategoriesLoadingCopyWithImpl<$Res>
    extends _$ServiceCategoriesCopyWithImpl<$Res>
    implements _$$ServiceCategoriesLoadingCopyWith<$Res> {
  __$$ServiceCategoriesLoadingCopyWithImpl(_$ServiceCategoriesLoading _value,
      $Res Function(_$ServiceCategoriesLoading) _then)
      : super(_value, (v) => _then(v as _$ServiceCategoriesLoading));

  @override
  _$ServiceCategoriesLoading get _value =>
      super._value as _$ServiceCategoriesLoading;
}

/// @nodoc

class _$ServiceCategoriesLoading implements ServiceCategoriesLoading {
  const _$ServiceCategoriesLoading();

  @override
  String toString() {
    return 'ServiceCategories.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ServiceCategory> categories) data,
    required TResult Function() loading,
    required TResult Function(DioError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCategoriesData value) data,
    required TResult Function(ServiceCategoriesLoading value) loading,
    required TResult Function(ServiceCategoriesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ServiceCategoriesLoading implements ServiceCategories {
  const factory ServiceCategoriesLoading() = _$ServiceCategoriesLoading;
}

/// @nodoc
abstract class _$$ServiceCategoriesErrorCopyWith<$Res> {
  factory _$$ServiceCategoriesErrorCopyWith(_$ServiceCategoriesError value,
          $Res Function(_$ServiceCategoriesError) then) =
      __$$ServiceCategoriesErrorCopyWithImpl<$Res>;
  $Res call({DioError error});
}

/// @nodoc
class __$$ServiceCategoriesErrorCopyWithImpl<$Res>
    extends _$ServiceCategoriesCopyWithImpl<$Res>
    implements _$$ServiceCategoriesErrorCopyWith<$Res> {
  __$$ServiceCategoriesErrorCopyWithImpl(_$ServiceCategoriesError _value,
      $Res Function(_$ServiceCategoriesError) _then)
      : super(_value, (v) => _then(v as _$ServiceCategoriesError));

  @override
  _$ServiceCategoriesError get _value =>
      super._value as _$ServiceCategoriesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ServiceCategoriesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$ServiceCategoriesError implements ServiceCategoriesError {
  const _$ServiceCategoriesError(this.error);

  @override
  final DioError error;

  @override
  String toString() {
    return 'ServiceCategories.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCategoriesError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ServiceCategoriesErrorCopyWith<_$ServiceCategoriesError> get copyWith =>
      __$$ServiceCategoriesErrorCopyWithImpl<_$ServiceCategoriesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ServiceCategory> categories) data,
    required TResult Function() loading,
    required TResult Function(DioError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ServiceCategory> categories)? data,
    TResult Function()? loading,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCategoriesData value) data,
    required TResult Function(ServiceCategoriesLoading value) loading,
    required TResult Function(ServiceCategoriesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCategoriesData value)? data,
    TResult Function(ServiceCategoriesLoading value)? loading,
    TResult Function(ServiceCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ServiceCategoriesError implements ServiceCategories {
  const factory ServiceCategoriesError(final DioError error) =
      _$ServiceCategoriesError;

  DioError get error;
  @JsonKey(ignore: true)
  _$$ServiceCategoriesErrorCopyWith<_$ServiceCategoriesError> get copyWith =>
      throw _privateConstructorUsedError;
}
