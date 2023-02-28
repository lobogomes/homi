import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'i_key_value_database.dart';

class SharedPreferencesDatabase extends IKeyValueStorageDatabase {
  late SharedPreferences _instance;

  @override
  Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  @override
  dynamic read({required String key}) {
    if (!_instance.containsKey(key)) {
      throw Exception();
    }

    return json.decode(_instance.getString(key)!);
  }

  @override
  Future<bool> save({required String key, required value}) async {
    return await _instance.setString(key, json.encode(value));
  }

  @override
  bool containsKey({required String key}) {
    return _instance.containsKey(key);
  }

  @override
  Future<bool> remove({required String key}) async {
    if (!_instance.containsKey(key)) {
      throw Exception();
    }

    return await _instance.remove(key);
  }

  @override
  Future<bool> saveMap({required Map<String, dynamic> map}) async {
    bool result = true;

    for (String key in map.keys) {
      if (result) {
        result = await _instance.setString(key, json.encode(map[key]));
      } else {
        await _instance.setString(key, json.encode(map[key]));
      }
    }

    return result;
  }

  @override
  Map<String, dynamic> readMap({required List<String> keys}) {
    final Map<String, dynamic> mapResponse = <String, dynamic>{};
    dynamic valueResponse;

    for (String key in keys) {
      if (!_instance.containsKey(key)) {
        throw Exception();
      }

      valueResponse = json.decode(_instance.getString(key)!);
      mapResponse.putIfAbsent(key, () => valueResponse);
    }

    return mapResponse;
  }

  @override
  Future<bool> removeMap({List<String>? keys}) async {
    bool result = true;
    if (keys != null) {
      for (String key in keys) {
        if (!_instance.containsKey(key)) {
          throw Exception();
        } else {}
        if (result) {
          result = await _instance.remove(key);
        } else {
          await _instance.remove(key);
        }
      }
    }

    return result;
  }

  @override
  Future<bool> clear() async {
    return await _instance.clear();
  }

  @override
  Future<bool> clearAllPatients() async {
    final patientKeys = _instance.getKeys().where((element) => !element.contains('key-'));

    if (patientKeys.isNotEmpty) {
      for (String patientKey in patientKeys) {
        await _instance.remove(patientKey);
      }
      return true;
    } else {
      return false;
    }
  }
}
