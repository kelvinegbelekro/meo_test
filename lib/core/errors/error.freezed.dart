// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeoException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MeoServerException value) server,
    required TResult Function(_$MeoNoInternetException value) noInternet,
    required TResult Function(_$MeoAppException value) app,
    required TResult Function(_$MeoUnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MeoServerException value)? server,
    TResult? Function(_$MeoNoInternetException value)? noInternet,
    TResult? Function(_$MeoAppException value)? app,
    TResult? Function(_$MeoUnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MeoServerException value)? server,
    TResult Function(_$MeoNoInternetException value)? noInternet,
    TResult Function(_$MeoAppException value)? app,
    TResult Function(_$MeoUnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeoExceptionCopyWith<$Res> {
  factory $MeoExceptionCopyWith(
          MeoException value, $Res Function(MeoException) then) =
      _$MeoExceptionCopyWithImpl<$Res, MeoException>;
}

/// @nodoc
class _$MeoExceptionCopyWithImpl<$Res, $Val extends MeoException>
    implements $MeoExceptionCopyWith<$Res> {
  _$MeoExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$MeoServerExceptionImplCopyWith<$Res> {
  factory _$$$MeoServerExceptionImplCopyWith(_$$MeoServerExceptionImpl value,
          $Res Function(_$$MeoServerExceptionImpl) then) =
      __$$$MeoServerExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$$MeoServerExceptionImplCopyWithImpl<$Res>
    extends _$MeoExceptionCopyWithImpl<$Res, _$$MeoServerExceptionImpl>
    implements _$$$MeoServerExceptionImplCopyWith<$Res> {
  __$$$MeoServerExceptionImplCopyWithImpl(_$$MeoServerExceptionImpl _value,
      $Res Function(_$$MeoServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$$MeoServerExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$MeoServerExceptionImpl implements _$MeoServerException {
  const _$$MeoServerExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MeoException.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$MeoServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$MeoServerExceptionImplCopyWith<_$$MeoServerExceptionImpl> get copyWith =>
      __$$$MeoServerExceptionImplCopyWithImpl<_$$MeoServerExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MeoServerException value) server,
    required TResult Function(_$MeoNoInternetException value) noInternet,
    required TResult Function(_$MeoAppException value) app,
    required TResult Function(_$MeoUnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MeoServerException value)? server,
    TResult? Function(_$MeoNoInternetException value)? noInternet,
    TResult? Function(_$MeoAppException value)? app,
    TResult? Function(_$MeoUnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MeoServerException value)? server,
    TResult Function(_$MeoNoInternetException value)? noInternet,
    TResult Function(_$MeoAppException value)? app,
    TResult Function(_$MeoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$MeoServerException implements MeoException {
  const factory _$MeoServerException(final String message) =
      _$$MeoServerExceptionImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$$MeoServerExceptionImplCopyWith<_$$MeoServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$MeoNoInternetExceptionImplCopyWith<$Res> {
  factory _$$$MeoNoInternetExceptionImplCopyWith(
          _$$MeoNoInternetExceptionImpl value,
          $Res Function(_$$MeoNoInternetExceptionImpl) then) =
      __$$$MeoNoInternetExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$MeoNoInternetExceptionImplCopyWithImpl<$Res>
    extends _$MeoExceptionCopyWithImpl<$Res, _$$MeoNoInternetExceptionImpl>
    implements _$$$MeoNoInternetExceptionImplCopyWith<$Res> {
  __$$$MeoNoInternetExceptionImplCopyWithImpl(
      _$$MeoNoInternetExceptionImpl _value,
      $Res Function(_$$MeoNoInternetExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$MeoNoInternetExceptionImpl implements _$MeoNoInternetException {
  const _$$MeoNoInternetExceptionImpl();

  @override
  String toString() {
    return 'MeoException.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$MeoNoInternetExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
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
    required TResult Function(_$MeoServerException value) server,
    required TResult Function(_$MeoNoInternetException value) noInternet,
    required TResult Function(_$MeoAppException value) app,
    required TResult Function(_$MeoUnknownException value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MeoServerException value)? server,
    TResult? Function(_$MeoNoInternetException value)? noInternet,
    TResult? Function(_$MeoAppException value)? app,
    TResult? Function(_$MeoUnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MeoServerException value)? server,
    TResult Function(_$MeoNoInternetException value)? noInternet,
    TResult Function(_$MeoAppException value)? app,
    TResult Function(_$MeoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$MeoNoInternetException implements MeoException {
  const factory _$MeoNoInternetException() = _$$MeoNoInternetExceptionImpl;
}

/// @nodoc
abstract class _$$$MeoAppExceptionImplCopyWith<$Res> {
  factory _$$$MeoAppExceptionImplCopyWith(_$$MeoAppExceptionImpl value,
          $Res Function(_$$MeoAppExceptionImpl) then) =
      __$$$MeoAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$$MeoAppExceptionImplCopyWithImpl<$Res>
    extends _$MeoExceptionCopyWithImpl<$Res, _$$MeoAppExceptionImpl>
    implements _$$$MeoAppExceptionImplCopyWith<$Res> {
  __$$$MeoAppExceptionImplCopyWithImpl(_$$MeoAppExceptionImpl _value,
      $Res Function(_$$MeoAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$$MeoAppExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$$MeoAppExceptionImpl implements _$MeoAppException {
  const _$$MeoAppExceptionImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'MeoException.app(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$MeoAppExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$MeoAppExceptionImplCopyWith<_$$MeoAppExceptionImpl> get copyWith =>
      __$$$MeoAppExceptionImplCopyWithImpl<_$$MeoAppExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
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
    required TResult Function(_$MeoServerException value) server,
    required TResult Function(_$MeoNoInternetException value) noInternet,
    required TResult Function(_$MeoAppException value) app,
    required TResult Function(_$MeoUnknownException value) unknown,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MeoServerException value)? server,
    TResult? Function(_$MeoNoInternetException value)? noInternet,
    TResult? Function(_$MeoAppException value)? app,
    TResult? Function(_$MeoUnknownException value)? unknown,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MeoServerException value)? server,
    TResult Function(_$MeoNoInternetException value)? noInternet,
    TResult Function(_$MeoAppException value)? app,
    TResult Function(_$MeoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$MeoAppException implements MeoException {
  const factory _$MeoAppException(final String? message) =
      _$$MeoAppExceptionImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$$MeoAppExceptionImplCopyWith<_$$MeoAppExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$MeoUnknownExceptionImplCopyWith<$Res> {
  factory _$$$MeoUnknownExceptionImplCopyWith(_$$MeoUnknownExceptionImpl value,
          $Res Function(_$$MeoUnknownExceptionImpl) then) =
      __$$$MeoUnknownExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$MeoUnknownExceptionImplCopyWithImpl<$Res>
    extends _$MeoExceptionCopyWithImpl<$Res, _$$MeoUnknownExceptionImpl>
    implements _$$$MeoUnknownExceptionImplCopyWith<$Res> {
  __$$$MeoUnknownExceptionImplCopyWithImpl(_$$MeoUnknownExceptionImpl _value,
      $Res Function(_$$MeoUnknownExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$MeoUnknownExceptionImpl implements _$MeoUnknownException {
  const _$$MeoUnknownExceptionImpl();

  @override
  String toString() {
    return 'MeoException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$MeoUnknownExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? app,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
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
    required TResult Function(_$MeoServerException value) server,
    required TResult Function(_$MeoNoInternetException value) noInternet,
    required TResult Function(_$MeoAppException value) app,
    required TResult Function(_$MeoUnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MeoServerException value)? server,
    TResult? Function(_$MeoNoInternetException value)? noInternet,
    TResult? Function(_$MeoAppException value)? app,
    TResult? Function(_$MeoUnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MeoServerException value)? server,
    TResult Function(_$MeoNoInternetException value)? noInternet,
    TResult Function(_$MeoAppException value)? app,
    TResult Function(_$MeoUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$MeoUnknownException implements MeoException {
  const factory _$MeoUnknownException() = _$$MeoUnknownExceptionImpl;
}
