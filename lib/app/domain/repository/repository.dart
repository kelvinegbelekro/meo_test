import 'package:dartz/dartz.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/data/model/programs_model.dart';
import 'package:meo_test_app/core/errors/failure.dart';

abstract class Repository {
  Future<Either<Failure, List<ChannelModel>>> getChannels();

  Future<Either<Failure, ProgramModel>> getProgram({
    required String callLetter,
  });
}
