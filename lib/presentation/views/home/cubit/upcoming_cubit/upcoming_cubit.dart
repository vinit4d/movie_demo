import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/dao/movie_dao.dart';
import '../../../../../data/dto/now_playing/now_playing_dto.dart';
import '../../../../../domain/usecases/now_playing_use_case.dart';
import '../../../../../domain/utlis/network_helper/network_helper.dart';

part 'upcoming_state.dart';

class UpComingCubit extends Cubit<UpComingState> {
  final NowPlayingUseCase getPopularUseCase;

  UpComingCubit(this.getPopularUseCase) : super(UpComingInitialState());

  Future<void> fetchUpComing(String type) async {
    emit(UpComingLoadingState());

    var connectivityResult = await NetworkHelper.isConnected();

    if (connectivityResult == false) {
      final result = await MovieDao().getAllData(type);
      emit(UpComingLoaded(result));
    } else {
      final result = await getPopularUseCase.call(
        CheckParams(customerInput: type),
      );

      result.fold(
        (failure) => emit(UpComingErrorState(failure.message)),
        (data) => emit(UpComingLoaded(data.results)),
      );
    }
  }
}
