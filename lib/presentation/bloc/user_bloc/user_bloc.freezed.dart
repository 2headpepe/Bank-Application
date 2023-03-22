// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
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
    required TResult Function(UserEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

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
abstract class _$$UserEventFetchCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$UserEventFetchCopyWith(
          _$UserEventFetch value, $Res Function(_$UserEventFetch) then) =
      __$$UserEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$UserEventFetchCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserEventFetch>
    implements _$$UserEventFetchCopyWith<$Res> {
  __$$UserEventFetchCopyWithImpl(
      _$UserEventFetch _value, $Res Function(_$UserEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$UserEventFetch(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEventFetch implements UserEventFetch {
  const _$UserEventFetch({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'UserEvent.fetch(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEventFetch &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEventFetchCopyWith<_$UserEventFetch> get copyWith =>
      __$$UserEventFetchCopyWithImpl<_$UserEventFetch>(this, _$identity);

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
    required TResult Function(UserEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class UserEventFetch implements UserEvent {
  const factory UserEventFetch({required final String token}) =
      _$UserEventFetch;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$UserEventFetchCopyWith<_$UserEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity fullUserInfo) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserEntity fullUserInfo)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity fullUserInfo)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStateLoadingCopyWith<$Res> {
  factory _$$UserStateLoadingCopyWith(
          _$UserStateLoading value, $Res Function(_$UserStateLoading) then) =
      __$$UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoading>
    implements _$$UserStateLoadingCopyWith<$Res> {
  __$$UserStateLoadingCopyWithImpl(
      _$UserStateLoading _value, $Res Function(_$UserStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateLoading implements UserStateLoading {
  const _$UserStateLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity fullUserInfo) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserEntity fullUserInfo)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity fullUserInfo)? loaded,
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
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserState {
  const factory UserStateLoading() = _$UserStateLoading;
}

/// @nodoc
abstract class _$$UserStateLoadedCopyWith<$Res> {
  factory _$$UserStateLoadedCopyWith(
          _$UserStateLoaded value, $Res Function(_$UserStateLoaded) then) =
      __$$UserStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity fullUserInfo});
}

/// @nodoc
class __$$UserStateLoadedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoaded>
    implements _$$UserStateLoadedCopyWith<$Res> {
  __$$UserStateLoadedCopyWithImpl(
      _$UserStateLoaded _value, $Res Function(_$UserStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullUserInfo = null,
  }) {
    return _then(_$UserStateLoaded(
      fullUserInfo: null == fullUserInfo
          ? _value.fullUserInfo
          : fullUserInfo // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$UserStateLoaded implements UserStateLoaded {
  const _$UserStateLoaded({required this.fullUserInfo});

  @override
  final UserEntity fullUserInfo;

  @override
  String toString() {
    return 'UserState.loaded(fullUserInfo: $fullUserInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateLoaded &&
            (identical(other.fullUserInfo, fullUserInfo) ||
                other.fullUserInfo == fullUserInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullUserInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateLoadedCopyWith<_$UserStateLoaded> get copyWith =>
      __$$UserStateLoadedCopyWithImpl<_$UserStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity fullUserInfo) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(fullUserInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserEntity fullUserInfo)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(fullUserInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity fullUserInfo)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(fullUserInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserStateLoaded implements UserState {
  const factory UserStateLoaded({required final UserEntity fullUserInfo}) =
      _$UserStateLoaded;

  UserEntity get fullUserInfo;
  @JsonKey(ignore: true)
  _$$UserStateLoadedCopyWith<_$UserStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateErrorCopyWith<$Res> {
  factory _$$UserStateErrorCopyWith(
          _$UserStateError value, $Res Function(_$UserStateError) then) =
      __$$UserStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UserStateErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateError>
    implements _$$UserStateErrorCopyWith<$Res> {
  __$$UserStateErrorCopyWithImpl(
      _$UserStateError _value, $Res Function(_$UserStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateError implements UserStateError {
  const _$UserStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateErrorCopyWith<_$UserStateError> get copyWith =>
      __$$UserStateErrorCopyWithImpl<_$UserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserEntity fullUserInfo) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserEntity fullUserInfo)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserEntity fullUserInfo)? loaded,
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
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserState {
  const factory UserStateError({required final String error}) =
      _$UserStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$UserStateErrorCopyWith<_$UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
