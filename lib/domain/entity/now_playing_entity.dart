import '../../data/dto/now_playing/now_playing_dto.dart';

class NowPlayingEntity {
  final List<MovieDto> results; // or MovieEntity if you're converting
  final int page;
  final int totalPages;
  final int totalResults;

  const NowPlayingEntity({
    required this.results,
    required this.page,
    required this.totalPages,
    required this.totalResults,
  });
}
