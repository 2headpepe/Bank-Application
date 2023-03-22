// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res, TransactionsEvent>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res, $Val extends TransactionsEvent>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionsEventFetchCopyWith<$Res> {
  factory _$$TransactionsEventFetchCopyWith(_$TransactionsEventFetch value,
          $Res Function(_$TransactionsEventFetch) then) =
      __$$TransactionsEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionsEventFetchCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$TransactionsEventFetch>
    implements _$$TransactionsEventFetchCopyWith<$Res> {
  __$$TransactionsEventFetchCopyWithImpl(_$TransactionsEventFetch _value,
      $Res Function(_$TransactionsEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionsEventFetch implements TransactionsEventFetch {
  const _$TransactionsEventFetch();

  @override
  String toString() {
    return 'TransactionsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionsEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class TransactionsEventFetch implements TransactionsEvent {
  const factory TransactionsEventFetch() = _$TransactionsEventFetch;
}

/// @nodoc
mixin _$TransactionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TransactionsHistoryEntity transactionsHistory)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionsHistoryEntity transactionsHistory)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TransactionsHistoryEntity transactionsHistory)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsStateLoading value) loading,
    required TResult Function(TransactionsStateLoaded value) loaded,
    required TResult Function(TransactionsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsStateLoading value)? loading,
    TResult? Function(TransactionsStateLoaded value)? loaded,
    TResult? Function(TransactionsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsStateLoading value)? loading,
    TResult Function(TransactionsStateLoaded value)? loaded,
    TResult Function(TransactionsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionsStateLoadingCopyWith<$Res> {
  factory _$$TransactionsStateLoadingCopyWith(_$TransactionsStateLoading value,
          $Res Function(_$TransactionsStateLoading) then) =
      __$$TransactionsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionsStateLoadingCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$TransactionsStateLoading>
    implements _$$TransactionsStateLoadingCopyWith<$Res> {
  __$$TransactionsStateLoadingCopyWithImpl(_$TransactionsStateLoading _value,
      $Res Function(_$TransactionsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionsStateLoading implements TransactionsStateLoading {
  const _$TransactionsStateLoading();

  @override
  String toString() {
    return 'TransactionsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TransactionsHistoryEntity transactionsHistory)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionsHistoryEntity transactionsHistory)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TransactionsHistoryEntity transactionsHistory)? loaded,
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
    required TResult Function(TransactionsStateLoading value) loading,
    required TResult Function(TransactionsStateLoaded value) loaded,
    required TResult Function(TransactionsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsStateLoading value)? loading,
    TResult? Function(TransactionsStateLoaded value)? loaded,
    TResult? Function(TransactionsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsStateLoading value)? loading,
    TResult Function(TransactionsStateLoaded value)? loaded,
    TResult Function(TransactionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionsStateLoading implements TransactionsState {
  const factory TransactionsStateLoading() = _$TransactionsStateLoading;
}

/// @nodoc
abstract class _$$TransactionsStateLoadedCopyWith<$Res> {
  factory _$$TransactionsStateLoadedCopyWith(_$TransactionsStateLoaded value,
          $Res Function(_$TransactionsStateLoaded) then) =
      __$$TransactionsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionsHistoryEntity transactionsHistory});
}

/// @nodoc
class __$$TransactionsStateLoadedCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$TransactionsStateLoaded>
    implements _$$TransactionsStateLoadedCopyWith<$Res> {
  __$$TransactionsStateLoadedCopyWithImpl(_$TransactionsStateLoaded _value,
      $Res Function(_$TransactionsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionsHistory = null,
  }) {
    return _then(_$TransactionsStateLoaded(
      transactionsHistory: null == transactionsHistory
          ? _value.transactionsHistory
          : transactionsHistory // ignore: cast_nullable_to_non_nullable
              as TransactionsHistoryEntity,
    ));
  }
}

/// @nodoc

class _$TransactionsStateLoaded implements TransactionsStateLoaded {
  const _$TransactionsStateLoaded({required this.transactionsHistory});

  @override
  final TransactionsHistoryEntity transactionsHistory;

  @override
  String toString() {
    return 'TransactionsState.loaded(transactionsHistory: $transactionsHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsStateLoaded &&
            (identical(other.transactionsHistory, transactionsHistory) ||
                other.transactionsHistory == transactionsHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionsHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsStateLoadedCopyWith<_$TransactionsStateLoaded> get copyWith =>
      __$$TransactionsStateLoadedCopyWithImpl<_$TransactionsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TransactionsHistoryEntity transactionsHistory)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(transactionsHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionsHistoryEntity transactionsHistory)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(transactionsHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TransactionsHistoryEntity transactionsHistory)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transactionsHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionsStateLoading value) loading,
    required TResult Function(TransactionsStateLoaded value) loaded,
    required TResult Function(TransactionsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsStateLoading value)? loading,
    TResult? Function(TransactionsStateLoaded value)? loaded,
    TResult? Function(TransactionsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsStateLoading value)? loading,
    TResult Function(TransactionsStateLoaded value)? loaded,
    TResult Function(TransactionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransactionsStateLoaded implements TransactionsState {
  const factory TransactionsStateLoaded(
          {required final TransactionsHistoryEntity transactionsHistory}) =
      _$TransactionsStateLoaded;

  TransactionsHistoryEntity get transactionsHistory;
  @JsonKey(ignore: true)
  _$$TransactionsStateLoadedCopyWith<_$TransactionsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionsStateErrorCopyWith<$Res> {
  factory _$$TransactionsStateErrorCopyWith(_$TransactionsStateError value,
          $Res Function(_$TransactionsStateError) then) =
      __$$TransactionsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TransactionsStateErrorCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$TransactionsStateError>
    implements _$$TransactionsStateErrorCopyWith<$Res> {
  __$$TransactionsStateErrorCopyWithImpl(_$TransactionsStateError _value,
      $Res Function(_$TransactionsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TransactionsStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionsStateError implements TransactionsStateError {
  const _$TransactionsStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TransactionsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsStateErrorCopyWith<_$TransactionsStateError> get copyWith =>
      __$$TransactionsStateErrorCopyWithImpl<_$TransactionsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TransactionsHistoryEntity transactionsHistory)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TransactionsHistoryEntity transactionsHistory)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TransactionsHistoryEntity transactionsHistory)? loaded,
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
    required TResult Function(TransactionsStateLoading value) loading,
    required TResult Function(TransactionsStateLoaded value) loaded,
    required TResult Function(TransactionsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionsStateLoading value)? loading,
    TResult? Function(TransactionsStateLoaded value)? loaded,
    TResult? Function(TransactionsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionsStateLoading value)? loading,
    TResult Function(TransactionsStateLoaded value)? loaded,
    TResult Function(TransactionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransactionsStateError implements TransactionsState {
  const factory TransactionsStateError({required final String error}) =
      _$TransactionsStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$TransactionsStateErrorCopyWith<_$TransactionsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
