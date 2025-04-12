import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/now_playing_entity.dart';

part 'now_playing_dto.freezed.dart';
part 'now_playing_dto.g.dart';

@freezed
class NowPlayingDto extends NowPlayingEntity with _$NowPlayingDto {
  const factory NowPlayingDto({
    required DatesDto? dates,
    required int page,
    required List<MovieDto> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _NowPlayingDto;

  factory NowPlayingDto.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingDtoFromJson(json);
}

@freezed
class DatesDto with _$DatesDto {
  const factory DatesDto({required String maximum, required String minimum}) =
      _DatesDto;

  factory DatesDto.fromJson(Map<String, dynamic> json) =>
      _$DatesDtoFromJson(json);
}

@freezed
class MovieDto with _$MovieDto {
  const factory MovieDto({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    // @JsonKey(name: 'genre_ids') required List<int> genreIds,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
