// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
    TResult? Function(String? message)? app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$AppFailure value)? app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$ServerFailureImplCopyWith<$Res> {
  factory _$$$ServerFailureImplCopyWith(_$$ServerFailureImpl value,
          $Res Function(_$$ServerFailureImpl) then) =
      __$$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$ServerFailureImpl>
    implements _$$$ServerFailureImplCopyWith<$Res> {
  __$$$ServerFailureImplCopyWithImpl(
      _$$ServerFailureImpl _value, $Res Function(_$$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$ServerFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$ServerFailureImpl implements _$ServerFailure {
  const _$$ServerFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ServerFailureImplCopyWith<_$$ServerFailureImpl> get copyWith =>
      __$$$ServerFailureImplCopyWithImpl<_$$ServerFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
    TResult? Function(String? message)? app,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$AppFailure value)? app,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _$ServerFailure implements Failure {
  const factory _$ServerFailure(final String message) = _$$ServerFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$$ServerFailureImplCopyWith<_$$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$NoInternetFailureImplCopyWith<$Res> {
  factory _$$$NoInternetFailureImplCopyWith(_$$NoInternetFailureImpl value,
          $Res Function(_$$NoInternetFailureImpl) then) =
      __$$$NoInternetFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$NoInternetFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$NoInternetFailureImpl>
    implements _$$$NoInternetFailureImplCopyWith<$Res> {
  __$$$NoInternetFailureImplCopyWithImpl(_$$NoInternetFailureImpl _value,
      $Res Function(_$$NoInternetFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$NoInternetFailureImpl implements _$NoInternetFailure {
  const _$$NoInternetFailureImpl();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$NoInternetFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
    TResult? Function(String? message)? app,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$AppFailure value)? app,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetFailure implements Failure {
  const factory _$NoInternetFailure() = _$$NoInternetFailureImpl;
}

/// @nodoc
abstract class _$$$UnknownFailureImplCopyWith<$Res> {
  factory _$$$UnknownFailureImplCopyWith(_$$UnknownFailureImpl value,
          $Res Function(_$$UnknownFailureImpl) then) =
      __$$$UnknownFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$UnknownFailureImpl>
    implements _$$$UnknownFailureImplCopyWith<$Res> {
  __$$$UnknownFailureImplCopyWithImpl(
      _$$UnknownFailureImpl _value, $Res Function(_$$UnknownFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$UnknownFailureImpl implements _$UnknownFailure {
  const _$$UnknownFailureImpl();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$UnknownFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
    TResult? Function(String? message)? app,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$AppFailure value)? app,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$UnknownFailure implements Failure {
  const factory _$UnknownFailure() = _$$UnknownFailureImpl;
}

/// @nodoc
abstract class _$$$AppFailureImplCopyWith<$Res> {
  factory _$$$AppFailureImplCopyWith(
          _$$AppFailureImpl value, $Res Function(_$$AppFailureImpl) then) =
      __$$$AppFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$$AppFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$$AppFailureImpl>
    implements _$$$AppFailureImplCopyWith<$Res> {
  __$$$AppFailureImplCopyWithImpl(
      _$$AppFailureImpl _value, $Res Function(_$$AppFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$$AppFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$AppFailureImpl implements _$AppFailure {
  const _$$AppFailureImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.app(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AppFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$AppFailureImplCopyWith<_$$AppFailureImpl> get copyWith =>
      __$$$AppFailureImplCopyWithImpl<_$$AppFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
    TResult? Function(String? message)? app,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerFailure value)? serverError,
    TResult? Function(_$NoInternetFailure value)? noInternet,
    TResult? Function(_$UnknownFailure value)? unknown,
    TResult? Function(_$AppFailure value)? app,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$AppFailure implements Failure {
  const factory _$AppFailure(final String? message) = _$$AppFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$$AppFailureImplCopyWith<_$$AppFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
