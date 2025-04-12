// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NowPlayingDtoImpl _$$NowPlayingDtoImplFromJson(Map<String, dynamic> json) =>
    _$NowPlayingDtoImpl(
      dates:
          json['dates'] == null
              ? null
              : DatesDto.fromJson(json['dates'] as Map<String, dynamic>),
      page: (json['page'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>)
              .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
              .toList(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$$NowPlayingDtoImplToJson(_$NowPlayingDtoImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$DatesDtoImpl _$$DatesDtoImplFromJson(Map<String, dynamic> json) =>
    _$DatesDtoImpl(
      maximum: json['maximum'] as String,
      minimum: json['minimum'] as String,
    );

Map<String, dynamic> _$$DatesDtoImplToJson(_$DatesDtoImpl instance) =>
    <String, dynamic>{'maximum': instance.maximum, 'minimum': instance.minimum};

_$MovieDtoImpl _$$MovieDtoImplFromJson(Map<String, dynamic> json) =>
    _$MovieDtoImpl(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num).toInt(),
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
    );

Map<String, dynamic> _$$MovieDtoImplToJson(_$MovieDtoImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
