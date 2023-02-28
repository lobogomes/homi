abstract class IKeyValueStorageDatabase {
  Future<void> init();
  bool containsKey({required String key});

  dynamic read({required String key});
  Future<bool> save({required String key, required value});
  Future<bool> remove({required String key});

  Future<bool> saveMap({required Map<String, dynamic> map});
  Map<String, dynamic> readMap({required List<String> keys});
  Future<bool> removeMap({required List<String> keys});

  Future<bool> clear();
  Future<bool> clearAllPatients();
}
