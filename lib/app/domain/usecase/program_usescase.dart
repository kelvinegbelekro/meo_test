import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meo_test_app/app/data/model/programs_model.dart';
import 'package:meo_test_app/app/domain/repository/repository.dart';
import 'package:meo_test_app/core/errors/failure.dart';
import 'package:meo_test_app/core/usecase.dart';

@lazySingleton
class GetProgramUseCase implements UseCase<ProgramModel, ProgramUsescaseParam> {
  GetProgramUseCase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, ProgramModel>> call(ProgramUsescaseParam param) async {
    return repository.getProgram(callLetter: param.callLetter);
  }
}

class ProgramUsescaseParam extends Equatable {
  const ProgramUsescaseParam({
    required this.callLetter,
  });
  final String callLetter;
  @override
  List<Object?> get props => [
        callLetter,
      ];
}
