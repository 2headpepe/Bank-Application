// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TokenEntity token) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TokenEntity token)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TokenEntity token)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenStateLoading value) loading,
    required TResult Function(TokenStateLoaded value) loaded,
    required TResult Function(TokenStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateLoading value)? loading,
    TResult? Function(TokenStateLoaded value)? loaded,
    TResult? Function(TokenStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateLoading value)? loading,
    TResult Function(TokenStateLoaded value)? loaded,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res, TokenState>;
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res, $Val extends TokenState>
    implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TokenStateLoadingCopyWith<$Res> {
  factory _$$TokenStateLoadingCopyWith(
          _$TokenStateLoading value, $Res Function(_$TokenStateLoading) then) =
      __$$TokenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenStateLoadingCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateLoading>
    implements _$$TokenStateLoadingCopyWith<$Res> {
  __$$TokenStateLoadingCopyWithImpl(
      _$TokenStateLoading _value, $Res Function(_$TokenStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TokenStateLoading implements TokenStateLoading {
  const _$TokenStateLoading();

  @override
  String toString() {
    return 'TokenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TokenEntity token) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TokenEntity token)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TokenEntity token)? loaded,
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
    required TResult Function(TokenStateLoading value) loading,
    required TResult Function(TokenStateLoaded value) loaded,
    required TResult Function(TokenStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateLoading value)? loading,
    TResult? Function(TokenStateLoaded value)? loaded,
    TResult? Function(TokenStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateLoading value)? loading,
    TResult Function(TokenStateLoaded value)? loaded,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TokenStateLoading implements TokenState {
  const factory TokenStateLoading() = _$TokenStateLoading;
}

/// @nodoc
abstract class _$$TokenStateLoadedCopyWith<$Res> {
  factory _$$TokenStateLoadedCopyWith(
          _$TokenStateLoaded value, $Res Function(_$TokenStateLoaded) then) =
      __$$TokenStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenEntity token});
}

/// @nodoc
class __$$TokenStateLoadedCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateLoaded>
    implements _$$TokenStateLoadedCopyWith<$Res> {
  __$$TokenStateLoadedCopyWithImpl(
      _$TokenStateLoaded _value, $Res Function(_$TokenStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenStateLoaded(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenEntity,
    ));
  }
}

/// @nodoc

class _$TokenStateLoaded implements TokenStateLoaded {
  const _$TokenStateLoaded({required this.token});

  @override
  final TokenEntity token;

  @override
  String toString() {
    return 'TokenState.loaded(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenStateLoaded &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenStateLoadedCopyWith<_$TokenStateLoaded> get copyWith =>
      __$$TokenStateLoadedCopyWithImpl<_$TokenStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TokenEntity token) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TokenEntity token)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TokenEntity token)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenStateLoading value) loading,
    required TResult Function(TokenStateLoaded value) loaded,
    required TResult Function(TokenStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateLoading value)? loading,
    TResult? Function(TokenStateLoaded value)? loaded,
    TResult? Function(TokenStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateLoading value)? loading,
    TResult Function(TokenStateLoaded value)? loaded,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TokenStateLoaded implements TokenState {
  const factory TokenStateLoaded({required final TokenEntity token}) =
      _$TokenStateLoaded;

  TokenEntity get token;
  @JsonKey(ignore: true)
  _$$TokenStateLoadedCopyWith<_$TokenStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenStateErrorCopyWith<$Res> {
  factory _$$TokenStateErrorCopyWith(
          _$TokenStateError value, $Res Function(_$TokenStateError) then) =
      __$$TokenStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TokenStateErrorCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateError>
    implements _$$TokenStateErrorCopyWith<$Res> {
  __$$TokenStateErrorCopyWithImpl(
      _$TokenStateError _value, $Res Function(_$TokenStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TokenStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenStateError implements TokenStateError {
  const _$TokenStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TokenState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenStateErrorCopyWith<_$TokenStateError> get copyWith =>
      __$$TokenStateErrorCopyWithImpl<_$TokenStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TokenEntity token) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TokenEntity token)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TokenEntity token)? loaded,
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
    required TResult Function(TokenStateLoading value) loading,
    required TResult Function(TokenStateLoaded value) loaded,
    required TResult Function(TokenStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenStateLoading value)? loading,
    TResult? Function(TokenStateLoaded value)? loaded,
    TResult? Function(TokenStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenStateLoading value)? loading,
    TResult Function(TokenStateLoaded value)? loaded,
    TResult Function(TokenStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TokenStateError implements TokenState {
  const factory TokenStateError({required final String error}) =
      _$TokenStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$TokenStateErrorCopyWith<_$TokenStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenEventCopyWith<TokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEventCopyWith<$Res> {
  factory $TokenEventCopyWith(
          TokenEvent value, $Res Function(TokenEvent) then) =
      _$TokenEventCopyWithImpl<$Res, TokenEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TokenEventCopyWithImpl<$Res, $Val extends TokenEvent>
    implements $TokenEventCopyWith<$Res> {
  _$TokenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenEventFetchCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$TokenEventFetchCopyWith(
          _$TokenEventFetch value, $Res Function(_$TokenEventFetch) then) =
      __$$TokenEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TokenEventFetchCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$TokenEventFetch>
    implements _$$TokenEventFetchCopyWith<$Res> {
  __$$TokenEventFetchCopyWithImpl(
      _$TokenEventFetch _value, $Res Function(_$TokenEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenEventFetch(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenEventFetch implements TokenEventFetch {
  const _$TokenEventFetch(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'TokenEvent.fetch(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenEventFetch &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenEventFetchCopyWith<_$TokenEventFetch> get copyWith =>
      __$$TokenEventFetchCopyWithImpl<_$TokenEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) fetch,
  }) {
    return fetch(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? fetch,
  }) {
    return fetch?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class TokenEventFetch implements TokenEvent {
  const factory TokenEventFetch(final String token) = _$TokenEventFetch;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$TokenEventFetchCopyWith<_$TokenEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}
