abstract class databaseabstract<T>{

  Future <int> create(T obj);
  Future<List<T>> read();
  Future<bool> update();
  Future<T?>show(int id);
  Future<bool> delete(int id);


}