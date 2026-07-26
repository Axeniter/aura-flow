import 'package:hive/hive.dart';

abstract class BaseService<T extends HiveObject> {
  Box<T> get box;

  List<T> getAll() => box.values.toList();

  T? getById(String id) => box.get(id);

  Future<void> save(T item) async {
    await box.put((item as dynamic).id, item);
  }

  Future<void> delete(String id) async {
    await box.delete(id);
  }

  int get count => box.length;

  bool exists(String id) => box.containsKey(id);
}