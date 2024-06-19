// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meo_test_app/app/data/model/channels_model.dart';
import 'package:meo_test_app/app/domain/usecase/channels_usecase.dart';
import 'package:meo_test_app/core/app_state.dart';
import 'package:meo_test_app/core/errors/failure.dart';
import 'package:meo_test_app/core/usecase.dart';

@lazySingleton
class ChannelsProvider extends ChangeNotifier {
  ChannelsProvider({
    required this.getChannelsUseCase,
  });

  final GetChannelsUseCase getChannelsUseCase;

  Failure? failure;
  List<ChannelModel>? channelModel;
  AppState state = AppState.idle;
  List<ChannelModel> _recentlyViewedPrograms = [];
  List<ChannelModel> get recentlyViewedPrograms => _recentlyViewedPrograms;

  void addViewedProgram(ChannelModel program) {
    program.viewedAt = DateTime.now();
    _recentlyViewedPrograms.removeWhere((p) => p.title == program.title);
    _recentlyViewedPrograms.insert(0, program);
    if (_recentlyViewedPrograms.length > 3) {
      _recentlyViewedPrograms.removeLast();
    }
    notifyListeners();
  }

  Future<bool> getChannels() async {
    state = AppState.busy;
    notifyListeners();
    final result = await getChannelsUseCase(NoParams());
    return result.fold(
      (l) {
        state = AppState.idle;
        notifyListeners();
        failure = l;
        Logger().d("failure: $l");
        return false;
      },
      (r) {
        state = AppState.idle;
        notifyListeners();
        channelModel = r;
        Logger().d("Success: $r");
        return true;
      },
    );
  }
}
