import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/domain/repository/repository.dart';
import 'package:meo_test_app/core/errors/failure.dart';
import 'package:meo_test_app/core/usecase.dart';

@lazySingleton
class GetChannelsUseCase implements UseCase<List<ChannelModel>, NoParams> {
  GetChannelsUseCase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, List<ChannelModel>>> call(NoParams params) async {
    return repository.getChannels();
  }
}
