import 'package:get_storage/get_storage.dart';

class KLocalStorage {
  static final KLocalStorage _instance = KLocalStorage._internal();

  factory KLocalStorage() {
    return _instance;
  }

  KLocalStorage._internal();

  final _storage = GetStorage();

  // Generate a method to save data
  Future<void> saveData<K>(String key, K value) async {
    await _storage.write(key, value);
  }

  // Generate a method to read data
  K? readData<K>(String key) {
    return  _storage.read<K>(key);
  }

  // Generate a method to delete data
  Future<void> deleteData(String key) async {
    await _storage.remove(key);
  }

  // Generate a method to clear data
  Future<void> clearData() async {
    await _storage.erase();
  }
}
