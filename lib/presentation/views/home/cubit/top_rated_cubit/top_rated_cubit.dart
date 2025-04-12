import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/dao/movie_dao.dart';
import '../../../../../data/dto/now_playing/now_playing_dto.dart';
import '../../../../../domain/entity/now_playing_entity.dart';
import '../../../../../domain/usecases/now_playing_use_case.dart';
import '../../../../../domain/utlis/network_helper/network_helper.dart';

part 'top_rated_state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  final NowPlayingUseCase getPopularUseCase;

  TopRatedCubit(this.getPopularUseCase) : super(TopRatedInitialState());

  Future<void> fetchTopRated(String type) async {
    emit(TopRatedLoadingState());

    var connectivityResult = await NetworkHelper.isConnected();

    if (connectivityResult == false) {
      final result = await MovieDao().getAllData(type);
      emit(TopRatedLoaded(result));
    } else {
      final result = await getPopularUseCase.call(
        CheckParams(customerInput: type),
      );

      result.fold(
        (failure) => emit(TopRatedErrorState(failure.message)),
        (data) => emit(TopRatedLoaded(data.results)),
      );
    }
  }
}
