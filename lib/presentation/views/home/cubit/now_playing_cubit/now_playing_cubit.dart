import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:demo_app_lite/data/exception/exceptions.dart';
import 'package:either_dart/src/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/dao/movie_dao.dart';
import '../../../../../data/dto/now_playing/now_playing_dto.dart';
import '../../../../../domain/entity/now_playing_entity.dart';
import '../../../../../domain/usecases/now_playing_use_case.dart';
import '../../../../../domain/utlis/network_helper/network_helper.dart';

part 'now_playing_state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  final NowPlayingUseCase getNowPlayingUseCase;

  NowPlayingCubit(this.getNowPlayingUseCase) : super(NowPlayingInitialState());

  Future<void> fetchNowPlaying(String type) async {
    emit(NowPlayingLoadingState());
    var connectivityResult = await NetworkHelper.isConnected();

    if (connectivityResult == false) {
      final result = await MovieDao().getAllData(type);
      emit(NowPlayingLoaded(result));
    } else {
      final result = await getNowPlayingUseCase.call(
        CheckParams(customerInput: type),
      );
      result.fold(
        (failure) => emit(NowPlayingErrorState(failure.message)),
        (data) => emit(NowPlayingLoaded(data.results)),
      );
    }
  }
}
