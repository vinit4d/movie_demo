import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/dao/movie_dao.dart';
import '../../../../../data/dto/now_playing/now_playing_dto.dart';
import '../../../../../domain/usecases/now_playing_use_case.dart';
import '../../../../../domain/utlis/network_helper/network_helper.dart';

part 'popular_state.dart';

class PopularCubit extends Cubit<PopularState> {
  final NowPlayingUseCase getPopularUseCase;

  PopularCubit(this.getPopularUseCase) : super(PopularInitialState());

  Future<void> fetchPopular(String type) async {
    emit(PopularLoadingState());

    var connectivityResult = await NetworkHelper.isConnected();

    if (connectivityResult == false) {
      final result = await MovieDao().getAllData(type);
      emit(PopularLoaded(result));
    } else {
      final result = await getPopularUseCase.call(
        CheckParams(customerInput: type),
      );

      result.fold(
        (failure) => emit(PopularErrorState(failure.message)),
        (data) => emit(PopularLoaded(data.results)),
      );
    }
  }
}
