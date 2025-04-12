// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NowPlayingDto _$NowPlayingDtoFromJson(Map<String, dynamic> json) {
  return _NowPlayingDto.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingDto {
  DatesDto? get dates => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<MovieDto> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  /// Serializes this NowPlayingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NowPlayingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingDtoCopyWith<NowPlayingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingDtoCopyWith<$Res> {
  factory $NowPlayingDtoCopyWith(
    NowPlayingDto value,
    $Res Function(NowPlayingDto) then,
  ) = _$NowPlayingDtoCopyWithImpl<$Res, NowPlayingDto>;
  @useResult
  $Res call({
    DatesDto? dates,
    int page,
    List<MovieDto> results,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'total_results') int totalResults,
  });

  $DatesDtoCopyWith<$Res>? get dates;
}

/// @nodoc
class _$NowPlayingDtoCopyWithImpl<$Res, $Val extends NowPlayingDto>
    implements $NowPlayingDtoCopyWith<$Res> {
  _$NowPlayingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(
      _value.copyWith(
            dates:
                freezed == dates
                    ? _value.dates
                    : dates // ignore: cast_nullable_to_non_nullable
                        as DatesDto?,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<MovieDto>,
            totalPages:
                null == totalPages
                    ? _value.totalPages
                    : totalPages // ignore: cast_nullable_to_non_nullable
                        as int,
            totalResults:
                null == totalResults
                    ? _value.totalResults
                    : totalResults // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of NowPlayingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatesDtoCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesDtoCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NowPlayingDtoImplCopyWith<$Res>
    implements $NowPlayingDtoCopyWith<$Res> {
  factory _$$NowPlayingDtoImplCopyWith(
    _$NowPlayingDtoImpl value,
    $Res Function(_$NowPlayingDtoImpl) then,
  ) = __$$NowPlayingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DatesDto? dates,
    int page,
    List<MovieDto> results,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'total_results') int totalResults,
  });

  @override
  $DatesDtoCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$NowPlayingDtoImplCopyWithImpl<$Res>
    extends _$NowPlayingDtoCopyWithImpl<$Res, _$NowPlayingDtoImpl>
    implements _$$NowPlayingDtoImplCopyWith<$Res> {
  __$$NowPlayingDtoImplCopyWithImpl(
    _$NowPlayingDtoImpl _value,
    $Res Function(_$NowPlayingDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NowPlayingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(
      _$NowPlayingDtoImpl(
        dates:
            freezed == dates
                ? _value.dates
                : dates // ignore: cast_nullable_to_non_nullable
                    as DatesDto?,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<MovieDto>,
        totalPages:
            null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                    as int,
        totalResults:
            null == totalResults
                ? _value.totalResults
                : totalResults // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingDtoImpl implements _NowPlayingDto {
  const _$NowPlayingDtoImpl({
    required this.dates,
    required this.page,
    required final List<MovieDto> results,
    @JsonKey(name: 'total_pages') required this.totalPages,
    @JsonKey(name: 'total_results') required this.totalResults,
  }) : _results = results;

  factory _$NowPlayingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingDtoImplFromJson(json);

  @override
  final DatesDto? dates;
  @override
  final int page;
  final List<MovieDto> _results;
  @override
  List<MovieDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'NowPlayingDto(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingDtoImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dates,
    page,
    const DeepCollectionEquality().hash(_results),
    totalPages,
    totalResults,
  );

  /// Create a copy of NowPlayingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingDtoImplCopyWith<_$NowPlayingDtoImpl> get copyWith =>
      __$$NowPlayingDtoImplCopyWithImpl<_$NowPlayingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingDtoImplToJson(this);
  }
}

abstract class _NowPlayingDto implements NowPlayingDto {
  const factory _NowPlayingDto({
    required final DatesDto? dates,
    required final int page,
    required final List<MovieDto> results,
    @JsonKey(name: 'total_pages') required final int totalPages,
    @JsonKey(name: 'total_results') required final int totalResults,
  }) = _$NowPlayingDtoImpl;

  factory _NowPlayingDto.fromJson(Map<String, dynamic> json) =
      _$NowPlayingDtoImpl.fromJson;

  @override
  DatesDto? get dates;
  @override
  int get page;
  @override
  List<MovieDto> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;

  /// Create a copy of NowPlayingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingDtoImplCopyWith<_$NowPlayingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatesDto _$DatesDtoFromJson(Map<String, dynamic> json) {
  return _DatesDto.fromJson(json);
}

/// @nodoc
mixin _$DatesDto {
  String get maximum => throw _privateConstructorUsedError;
  String get minimum => throw _privateConstructorUsedError;

  /// Serializes this DatesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatesDtoCopyWith<DatesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesDtoCopyWith<$Res> {
  factory $DatesDtoCopyWith(DatesDto value, $Res Function(DatesDto) then) =
      _$DatesDtoCopyWithImpl<$Res, DatesDto>;
  @useResult
  $Res call({String maximum, String minimum});
}

/// @nodoc
class _$DatesDtoCopyWithImpl<$Res, $Val extends DatesDto>
    implements $DatesDtoCopyWith<$Res> {
  _$DatesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? maximum = null, Object? minimum = null}) {
    return _then(
      _value.copyWith(
            maximum:
                null == maximum
                    ? _value.maximum
                    : maximum // ignore: cast_nullable_to_non_nullable
                        as String,
            minimum:
                null == minimum
                    ? _value.minimum
                    : minimum // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatesDtoImplCopyWith<$Res>
    implements $DatesDtoCopyWith<$Res> {
  factory _$$DatesDtoImplCopyWith(
    _$DatesDtoImpl value,
    $Res Function(_$DatesDtoImpl) then,
  ) = __$$DatesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String maximum, String minimum});
}

/// @nodoc
class __$$DatesDtoImplCopyWithImpl<$Res>
    extends _$DatesDtoCopyWithImpl<$Res, _$DatesDtoImpl>
    implements _$$DatesDtoImplCopyWith<$Res> {
  __$$DatesDtoImplCopyWithImpl(
    _$DatesDtoImpl _value,
    $Res Function(_$DatesDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? maximum = null, Object? minimum = null}) {
    return _then(
      _$DatesDtoImpl(
        maximum:
            null == maximum
                ? _value.maximum
                : maximum // ignore: cast_nullable_to_non_nullable
                    as String,
        minimum:
            null == minimum
                ? _value.minimum
                : minimum // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatesDtoImpl implements _DatesDto {
  const _$DatesDtoImpl({required this.maximum, required this.minimum});

  factory _$DatesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatesDtoImplFromJson(json);

  @override
  final String maximum;
  @override
  final String minimum;

  @override
  String toString() {
    return 'DatesDto(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatesDtoImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  /// Create a copy of DatesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatesDtoImplCopyWith<_$DatesDtoImpl> get copyWith =>
      __$$DatesDtoImplCopyWithImpl<_$DatesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatesDtoImplToJson(this);
  }
}

abstract class _DatesDto implements DatesDto {
  const factory _DatesDto({
    required final String maximum,
    required final String minimum,
  }) = _$DatesDtoImpl;

  factory _DatesDto.fromJson(Map<String, dynamic> json) =
      _$DatesDtoImpl.fromJson;

  @override
  String get maximum;
  @override
  String get minimum;

  /// Create a copy of DatesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatesDtoImplCopyWith<_$DatesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
mixin _$MovieDto {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError; // @JsonKey(name: 'genre_ids') required List<int> genreIds,
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  /// Serializes this MovieDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res, MovieDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    int id,
    @JsonKey(name: 'original_language') String originalLanguage,
    @JsonKey(name: 'original_title') String originalTitle,
    String overview,
    double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String releaseDate,
    String title,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int voteCount,
  });
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res, $Val extends MovieDto>
    implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(
      _value.copyWith(
            backdropPath:
                freezed == backdropPath
                    ? _value.backdropPath
                    : backdropPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            originalLanguage:
                null == originalLanguage
                    ? _value.originalLanguage
                    : originalLanguage // ignore: cast_nullable_to_non_nullable
                        as String,
            originalTitle:
                null == originalTitle
                    ? _value.originalTitle
                    : originalTitle // ignore: cast_nullable_to_non_nullable
                        as String,
            overview:
                null == overview
                    ? _value.overview
                    : overview // ignore: cast_nullable_to_non_nullable
                        as String,
            popularity:
                null == popularity
                    ? _value.popularity
                    : popularity // ignore: cast_nullable_to_non_nullable
                        as double,
            posterPath:
                freezed == posterPath
                    ? _value.posterPath
                    : posterPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            releaseDate:
                null == releaseDate
                    ? _value.releaseDate
                    : releaseDate // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            voteAverage:
                null == voteAverage
                    ? _value.voteAverage
                    : voteAverage // ignore: cast_nullable_to_non_nullable
                        as double,
            voteCount:
                null == voteCount
                    ? _value.voteCount
                    : voteCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MovieDtoImplCopyWith<$Res>
    implements $MovieDtoCopyWith<$Res> {
  factory _$$MovieDtoImplCopyWith(
    _$MovieDtoImpl value,
    $Res Function(_$MovieDtoImpl) then,
  ) = __$$MovieDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    int id,
    @JsonKey(name: 'original_language') String originalLanguage,
    @JsonKey(name: 'original_title') String originalTitle,
    String overview,
    double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String releaseDate,
    String title,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int voteCount,
  });
}

/// @nodoc
class __$$MovieDtoImplCopyWithImpl<$Res>
    extends _$MovieDtoCopyWithImpl<$Res, _$MovieDtoImpl>
    implements _$$MovieDtoImplCopyWith<$Res> {
  __$$MovieDtoImplCopyWithImpl(
    _$MovieDtoImpl _value,
    $Res Function(_$MovieDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(
      _$MovieDtoImpl(
        backdropPath:
            freezed == backdropPath
                ? _value.backdropPath
                : backdropPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        originalLanguage:
            null == originalLanguage
                ? _value.originalLanguage
                : originalLanguage // ignore: cast_nullable_to_non_nullable
                    as String,
        originalTitle:
            null == originalTitle
                ? _value.originalTitle
                : originalTitle // ignore: cast_nullable_to_non_nullable
                    as String,
        overview:
            null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                    as String,
        popularity:
            null == popularity
                ? _value.popularity
                : popularity // ignore: cast_nullable_to_non_nullable
                    as double,
        posterPath:
            freezed == posterPath
                ? _value.posterPath
                : posterPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        releaseDate:
            null == releaseDate
                ? _value.releaseDate
                : releaseDate // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        voteAverage:
            null == voteAverage
                ? _value.voteAverage
                : voteAverage // ignore: cast_nullable_to_non_nullable
                    as double,
        voteCount:
            null == voteCount
                ? _value.voteCount
                : voteCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDtoImpl implements _MovieDto {
  const _$MovieDtoImpl({
    @JsonKey(name: 'backdrop_path') this.backdropPath,
    required this.id,
    @JsonKey(name: 'original_language') required this.originalLanguage,
    @JsonKey(name: 'original_title') required this.originalTitle,
    required this.overview,
    required this.popularity,
    @JsonKey(name: 'poster_path') this.posterPath,
    @JsonKey(name: 'release_date') required this.releaseDate,
    required this.title,
    @JsonKey(name: 'vote_average') required this.voteAverage,
    @JsonKey(name: 'vote_count') required this.voteCount,
  });

  factory _$MovieDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDtoImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  // @JsonKey(name: 'genre_ids') required List<int> genreIds,
  @override
  final int id;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'MovieDto(backdropPath: $backdropPath, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDtoImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    backdropPath,
    id,
    originalLanguage,
    originalTitle,
    overview,
    popularity,
    posterPath,
    releaseDate,
    title,
    voteAverage,
    voteCount,
  );

  /// Create a copy of MovieDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDtoImplCopyWith<_$MovieDtoImpl> get copyWith =>
      __$$MovieDtoImplCopyWithImpl<_$MovieDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDtoImplToJson(this);
  }
}

abstract class _MovieDto implements MovieDto {
  const factory _MovieDto({
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    required final int id,
    @JsonKey(name: 'original_language') required final String originalLanguage,
    @JsonKey(name: 'original_title') required final String originalTitle,
    required final String overview,
    required final double popularity,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'release_date') required final String releaseDate,
    required final String title,
    @JsonKey(name: 'vote_average') required final double voteAverage,
    @JsonKey(name: 'vote_count') required final int voteCount,
  }) = _$MovieDtoImpl;

  factory _MovieDto.fromJson(Map<String, dynamic> json) =
      _$MovieDtoImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath; // @JsonKey(name: 'genre_ids') required List<int> genreIds,
  @override
  int get id;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;

  /// Create a copy of MovieDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDtoImplCopyWith<_$MovieDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
