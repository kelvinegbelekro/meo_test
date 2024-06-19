// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meo_test_app/app/data/model/programs_model.dart';
import 'package:meo_test_app/app/domain/usecase/program_usescase.dart';
import 'package:meo_test_app/core/errors/failure.dart';

@lazySingleton
class ProgramProvider extends ChangeNotifier {
  ProgramProvider({
    required this.getProgramUseCase,
  });

  final GetProgramUseCase getProgramUseCase;

  Failure? failure;
  ProgramModel? programModel;

  Future<bool> getProgram(String callLetter) async {
    final result =
        await getProgramUseCase(ProgramUsescaseParam(callLetter: callLetter));
    return result.fold(
      (l) {
        failure = l;
        Logger().d("failure: $l");
        return false;
      },
      (r) {
        programModel = r;
        Logger().d("Success: $r");
        return true;
      },
    );
  }
}
