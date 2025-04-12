import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_app_lite/data/dto/now_playing/now_playing_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:demo_app_lite/presentation/views/home/cubit/now_playing_cubit/now_playing_cubit.dart';
import 'package:demo_app_lite/presentation/views/home/cubit/popular_cubit/popular_cubit.dart';
import 'package:demo_app_lite/presentation/views/home/cubit/top_rated_cubit/top_rated_cubit.dart';
import 'package:demo_app_lite/presentation/views/home/cubit/upcoming_cubit/upcoming_cubit.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final NowPlayingCubit nowPlayingCubit;
  final PopularCubit popularCubit;
  final TopRatedCubit topRatedCubit;
  final UpComingCubit upcomingCubit;

  SearchCubit({
    required this.nowPlayingCubit,
    required this.popularCubit,
    required this.topRatedCubit,
    required this.upcomingCubit,
  }) : super(SearchInitial());

  void searchMovies(String query) {
    final List<MovieDto> allMovies = [
      ...nowPlayingCubit.state is NowPlayingLoaded
          ? (nowPlayingCubit.state as NowPlayingLoaded).nowPlaying
          : [],
      ...popularCubit.state is PopularLoaded
          ? (popularCubit.state as PopularLoaded).popular
          : [],
      ...topRatedCubit.state is TopRatedLoaded
          ? (topRatedCubit.state as TopRatedLoaded).topRated
          : [],
      ...upcomingCubit.state is UpComingLoaded
          ? (upcomingCubit.state as UpComingLoaded).upComing
          : [],
    ];

    if (query.isEmpty) {
      emit(SearchInitial());
    } else {
      final filteredMovies =
          allMovies.where((movie) {
            return movie.title.toLowerCase().contains(query.toLowerCase());
          }).toList();
      emit(SearchLoaded(filteredMovies));
    }
  }
}
