// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyEvent {
  String get source => throw _privateConstructorUsedError;
  String get currencies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, String currencies) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String source, String currencies)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, String currencies)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyEventCopyWith<CurrencyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEventCopyWith<$Res> {
  factory $CurrencyEventCopyWith(
          CurrencyEvent value, $Res Function(CurrencyEvent) then) =
      _$CurrencyEventCopyWithImpl<$Res, CurrencyEvent>;
  @useResult
  $Res call({String source, String currencies});
}

/// @nodoc
class _$CurrencyEventCopyWithImpl<$Res, $Val extends CurrencyEvent>
    implements $CurrencyEventCopyWith<$Res> {
  _$CurrencyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyEventFetchCopyWith<$Res>
    implements $CurrencyEventCopyWith<$Res> {
  factory _$$CurrencyEventFetchCopyWith(_$CurrencyEventFetch value,
          $Res Function(_$CurrencyEventFetch) then) =
      __$$CurrencyEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, String currencies});
}

/// @nodoc
class __$$CurrencyEventFetchCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$CurrencyEventFetch>
    implements _$$CurrencyEventFetchCopyWith<$Res> {
  __$$CurrencyEventFetchCopyWithImpl(
      _$CurrencyEventFetch _value, $Res Function(_$CurrencyEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? currencies = null,
  }) {
    return _then(_$CurrencyEventFetch(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyEventFetch implements CurrencyEventFetch {
  const _$CurrencyEventFetch({required this.source, required this.currencies});

  @override
  final String source;
  @override
  final String currencies;

  @override
  String toString() {
    return 'CurrencyEvent.fetch(source: $source, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyEventFetch &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.currencies, currencies) ||
                other.currencies == currencies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, currencies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyEventFetchCopyWith<_$CurrencyEventFetch> get copyWith =>
      __$$CurrencyEventFetchCopyWithImpl<_$CurrencyEventFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, String currencies) fetch,
  }) {
    return fetch(source, currencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String source, String currencies)? fetch,
  }) {
    return fetch?.call(source, currencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, String currencies)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(source, currencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CurrencyEventFetch implements CurrencyEvent {
  const factory CurrencyEventFetch(
      {required final String source,
      required final String currencies}) = _$CurrencyEventFetch;

  @override
  String get source;
  @override
  String get currencies;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyEventFetchCopyWith<_$CurrencyEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyRatesEntity currencyRates) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyStateLoading value) loading,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyStateLoading value)? loading,
    TResult? Function(CurrencyStateLoaded value)? loaded,
    TResult? Function(CurrencyStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateLoading value)? loading,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res, CurrencyState>;
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res, $Val extends CurrencyState>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrencyStateLoadingCopyWith<$Res> {
  factory _$$CurrencyStateLoadingCopyWith(_$CurrencyStateLoading value,
          $Res Function(_$CurrencyStateLoading) then) =
      __$$CurrencyStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyStateLoadingCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyStateLoading>
    implements _$$CurrencyStateLoadingCopyWith<$Res> {
  __$$CurrencyStateLoadingCopyWithImpl(_$CurrencyStateLoading _value,
      $Res Function(_$CurrencyStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyStateLoading implements CurrencyStateLoading {
  const _$CurrencyStateLoading();

  @override
  String toString() {
    return 'CurrencyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyRatesEntity currencyRates) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(CurrencyStateLoading value) loading,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyStateLoading value)? loading,
    TResult? Function(CurrencyStateLoaded value)? loaded,
    TResult? Function(CurrencyStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateLoading value)? loading,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CurrencyStateLoading implements CurrencyState {
  const factory CurrencyStateLoading() = _$CurrencyStateLoading;
}

/// @nodoc
abstract class _$$CurrencyStateLoadedCopyWith<$Res> {
  factory _$$CurrencyStateLoadedCopyWith(_$CurrencyStateLoaded value,
          $Res Function(_$CurrencyStateLoaded) then) =
      __$$CurrencyStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyRatesEntity currencyRates});
}

/// @nodoc
class __$$CurrencyStateLoadedCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyStateLoaded>
    implements _$$CurrencyStateLoadedCopyWith<$Res> {
  __$$CurrencyStateLoadedCopyWithImpl(
      _$CurrencyStateLoaded _value, $Res Function(_$CurrencyStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyRates = null,
  }) {
    return _then(_$CurrencyStateLoaded(
      currencyRates: null == currencyRates
          ? _value.currencyRates
          : currencyRates // ignore: cast_nullable_to_non_nullable
              as CurrencyRatesEntity,
    ));
  }
}

/// @nodoc

class _$CurrencyStateLoaded implements CurrencyStateLoaded {
  const _$CurrencyStateLoaded({required this.currencyRates});

  @override
  final CurrencyRatesEntity currencyRates;

  @override
  String toString() {
    return 'CurrencyState.loaded(currencyRates: $currencyRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyStateLoaded &&
            (identical(other.currencyRates, currencyRates) ||
                other.currencyRates == currencyRates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyRates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyStateLoadedCopyWith<_$CurrencyStateLoaded> get copyWith =>
      __$$CurrencyStateLoadedCopyWithImpl<_$CurrencyStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyRatesEntity currencyRates) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(currencyRates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(currencyRates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currencyRates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyStateLoading value) loading,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyStateLoading value)? loading,
    TResult? Function(CurrencyStateLoaded value)? loaded,
    TResult? Function(CurrencyStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateLoading value)? loading,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CurrencyStateLoaded implements CurrencyState {
  const factory CurrencyStateLoaded(
          {required final CurrencyRatesEntity currencyRates}) =
      _$CurrencyStateLoaded;

  CurrencyRatesEntity get currencyRates;
  @JsonKey(ignore: true)
  _$$CurrencyStateLoadedCopyWith<_$CurrencyStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyStateErrorCopyWith<$Res> {
  factory _$$CurrencyStateErrorCopyWith(_$CurrencyStateError value,
          $Res Function(_$CurrencyStateError) then) =
      __$$CurrencyStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CurrencyStateErrorCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyStateError>
    implements _$$CurrencyStateErrorCopyWith<$Res> {
  __$$CurrencyStateErrorCopyWithImpl(
      _$CurrencyStateError _value, $Res Function(_$CurrencyStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CurrencyStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyStateError implements CurrencyStateError {
  const _$CurrencyStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CurrencyState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyStateErrorCopyWith<_$CurrencyStateError> get copyWith =>
      __$$CurrencyStateErrorCopyWithImpl<_$CurrencyStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyRatesEntity currencyRates) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyRatesEntity currencyRates)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(CurrencyStateLoading value) loading,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyStateLoading value)? loading,
    TResult? Function(CurrencyStateLoaded value)? loaded,
    TResult? Function(CurrencyStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateLoading value)? loading,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrencyStateError implements CurrencyState {
  const factory CurrencyStateError({required final String error}) =
      _$CurrencyStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$CurrencyStateErrorCopyWith<_$CurrencyStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
