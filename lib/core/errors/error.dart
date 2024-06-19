import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

/// [MeoException] is thrown when there is a server error.
@freezed
class MeoException with _$MeoException implements Exception {
  /// [MeoException.server] is thrown when there is a server error.
  const factory MeoException.server(String message) = _$MeoServerException;

  /// [MeoException.noInternet] is thrown when there
  /// is no internet connection.
  const factory MeoException.noInternet() = _$MeoNoInternetException;

  /// [MeoException.app] is thrown when there
  /// is an error in the app.
  const factory MeoException.app(String? message) = _$MeoAppException;

  /// [MeoException.unknown] is thrown when there is an unknown error.
  const factory MeoException.unknown() = _$MeoUnknownException;
}
