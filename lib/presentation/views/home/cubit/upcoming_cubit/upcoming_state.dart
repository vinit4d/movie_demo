part of 'upcoming_cubit.dart';

@immutable
abstract class UpComingState {}

class UpComingInitialState extends UpComingState {}

class UpComingRefreshState extends UpComingState {}

class UpComingLoadingState extends UpComingState {}

class UpComingLoaded extends UpComingState {
  final List<MovieDto> upComing;

  UpComingLoaded(this.upComing);
}

class UpComingErrorState extends UpComingState {
  final String msg;

  UpComingErrorState(this.msg);
}
