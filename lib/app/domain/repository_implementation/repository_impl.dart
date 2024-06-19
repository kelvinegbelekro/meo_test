import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meo_test_app/app/data/datasources/remote_data_source.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/data/model/programs_model.dart';
import 'package:meo_test_app/app/domain/repository/repository.dart';
import 'package:meo_test_app/core/errors/failure.dart';
import 'package:meo_test_app/core/errors/failure_extration.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(this.remoteDataSource);

  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<ChannelModel>>> getChannels() async {
    try {
      final response = await remoteDataSource.getChannels();
      return Right(response);
    } catch (e) {
      return handleError(e);
    }
  }

  @override
  Future<Either<Failure, ProgramModel>> getProgram(
      {required String callLetter}) async {
    try {
      final response =
          await remoteDataSource.getPrograms(callLetter: callLetter);
      return Right(response);
    } catch (e) {
      return handleError(e);
    }
  }
}
