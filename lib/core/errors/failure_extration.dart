import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:meo_test_app/core/errors/error.dart';
import 'package:meo_test_app/core/errors/failure.dart';

Either<Failure, T> handleError<T>(dynamic e) {
  if (e is MeoException) {
    return Left(
      e.when(
        server: Failure.serverError,
        noInternet: Failure.noInternet,
        app: Failure.app,
        unknown: Failure.unknown,
      ),
    );
  } else if (e is DioException) {
    if (e.response?.data != null && e.response?.data != '') {
      Logger().d(e.response?.data as Map<String, dynamic>?);
      return Left(
        Failure.serverError(
          (e.response?.data as Map<String, dynamic>?)?['message'] as String? ??
              (e.response?.data as Map<String, dynamic>?)?['error']
                  as String? ??
              e.response?.data.toString() ??
              e.message!,
        ),
      );
    } else {
      return const Left(
        Failure.serverError('Server error, please try again'),
      );
    }
  }
  return const Left(Failure.unknown());
}
