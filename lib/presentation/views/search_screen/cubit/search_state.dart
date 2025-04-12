part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final List<MovieDto> movies;

  SearchLoaded(this.movies);

  @override
  List<Object> get props => [movies];
}

class SearchError extends SearchState {
  final String error;

  SearchError(this.error);

  @override
  List<Object> get props => [error];
}
