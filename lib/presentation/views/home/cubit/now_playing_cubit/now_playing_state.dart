part of 'now_playing_cubit.dart';

@immutable
abstract class NowPlayingState {}

class NowPlayingInitialState extends NowPlayingState {}

class NowPlayingRefreshState extends NowPlayingState {}

class NowPlayingLoadingState extends NowPlayingState {}

class NowPlayingLoaded extends NowPlayingState {
  final List<MovieDto> nowPlaying;

  NowPlayingLoaded(this.nowPlaying);
}

class NowPlayingErrorState extends NowPlayingState {
  final String msg;

  NowPlayingErrorState(this.msg);
}
