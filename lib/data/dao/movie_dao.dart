import 'package:sqflite/sqflite.dart';
import '../../domain/local_services/dao.dart';
import '../dto/now_playing/now_playing_dto.dart';
import '../local_services/local_services.dart';

class MovieDao extends IDao<MovieDto> {
  LocalService services = LocalService.get;

  final id = 'id';
  final title = 'title';
  final posterPath = 'poster_path';
  final type = 'type'; // Column for movie category (popular, top_rated, etc.)
  final backdropPath =
      'backdrop_path'; // Column for movie category (popular, top_rated, etc.)// Column for movie category (popular, top_rated, etc.)
  final originalLanguage =
      'original_language'; // Column for movie category (popular, top_rated, etc.)
  final originalTitle =
      'original_title'; // Column for movie category (popular, top_rated, etc.)
  final overview =
      'overview'; // Column for movie category (popular, top_rated, etc.)
  final popularity =
      'popularity'; // Column for movie category (popular, top_rated, etc.)
  final releaseDate =
      'release_date'; // Column for movie category (popular, top_rated, etc.)
  final voteAverage =
      'vote_average'; // Column for movie category (popular, top_rated, etc.)
  final voteCount =
      'vote_count'; // Column for movie category (popular, top_rated, etc.)

  @override
  String get tableName => "movies";

  @override
  String get createTableQuery =>
      "CREATE TABLE $tableName("
      " $id INTEGER PRIMARY KEY,"
      " $title TEXT,"
      " $posterPath TEXT,"
      " $type TEXT,"
      " $backdropPath TEXT,"
      " $originalLanguage TEXT,"
      " $originalTitle TEXT,"
      " $overview TEXT,"
      " $popularity REAL,"
      " $releaseDate TEXT,"
      " $voteAverage REAL,"
      " $voteCount REAL"
      ")";

  @override
  List<MovieDto> fromList(List<dynamic> query) {
    List<MovieDto> entity = [];
    for (dynamic map in query) {
      entity.add(fromMap(map));
    }
    return entity;
  }

  @override
  MovieDto fromMap(Map<String, dynamic> query) {
    return MovieDto.fromJson(query);
  }

  // Fetch movies by type (e.g., popular, top_rated, etc.)
  @override
  Future<List<MovieDto>> getAllData(String movieType) async {
    final db = await services.db();
    List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'type = ?', // Corrected: hardcoded column name
      whereArgs: [movieType],
    );
    return fromList(maps);
  }

  // Insert movie data with type, expected to be set from outside.
  @override
  Future<int> insertDB(Map<String, dynamic> entity, String type) async {
    final db = await services.db();

    // Convert bools to integers (SQLite doesn't support bool).
    entity.forEach((key, value) {
      if (value is bool) {
        entity[key] = value ? 1 : 0;
      }
    });

    // Add the 'type' field to the entity.
    entity['type'] = type;

    // Insert the entity into the database.
    int result = await db.insert(
      tableName,
      entity,
      conflictAlgorithm:
          ConflictAlgorithm.replace, // Handle conflict (replace existing data)
    );
    print("Table $tableName: Inserted id = $result for type $type");
    return result;
  }

  @override
  Future<int> deleteDB(String type) async {
    final db = await services.db();
    // Delete entries where the type matches the provided one
    int result = await db.delete(
      tableName,
      where: 'type = ?',
      whereArgs: [type],
    );
    return result;
  }

  @override
  Future<void> checkIdExistence(List<MovieDto> list) {
    throw UnimplementedError();
  }

  @override
  Future<void> checkIdExistenceForOne(MovieDto entity) {
    throw UnimplementedError();
  }

  @override
  Future<int> insertAll(List<MovieDto> list) {
    throw UnimplementedError();
  }

  @override
  MovieDto toMap(MovieDto object) {
    throw UnimplementedError();
  }

  @override
  Future<int> updateDB(MovieDto entity) {
    throw UnimplementedError();
  }
}
