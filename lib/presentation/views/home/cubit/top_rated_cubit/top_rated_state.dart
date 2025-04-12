part of 'top_rated_cubit.dart';

@immutable
abstract class TopRatedState {}

class TopRatedInitialState extends TopRatedState {}

class TopRatedRefreshState extends TopRatedState {}

class TopRatedLoadingState extends TopRatedState {}

class TopRatedLoaded extends TopRatedState {
  final List<MovieDto> topRated;

  TopRatedLoaded(this.topRated);
}

class TopRatedErrorState extends TopRatedState {
  final String msg;

  TopRatedErrorState(this.msg);
}
