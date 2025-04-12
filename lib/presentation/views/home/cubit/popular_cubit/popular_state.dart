part of 'popular_cubit.dart';

@immutable
abstract class PopularState {}

class PopularInitialState extends PopularState {}

class PopularRefreshState extends PopularState {}

class PopularLoadingState extends PopularState {}

class PopularLoaded extends PopularState {
  final List<MovieDto> popular;

  PopularLoaded(this.popular);
}

class PopularErrorState extends PopularState {
  final String msg;

  PopularErrorState(this.msg);
}
