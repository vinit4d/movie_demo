abstract class IDao<T> {
  String get tableName;
  String get createTableQuery;

  List<T> fromList(List<dynamic> query);
  T fromMap(Map<String, dynamic> query);

  Future<List<T>> getAllData(String type); // Pass type for filtering data
  Future<int> insertDB(
    Map<String, dynamic> entity,
    String type,
  ); // Insert with type
  Future<int> deleteDB(String type);

  Future<void> checkIdExistence(List<T> list);
  Future<void> checkIdExistenceForOne(T entity);

  Future<int> insertAll(List<T> list);
  T toMap(T object);
  Future<int> updateDB(T entity);
}
