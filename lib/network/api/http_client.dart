import 'package:dio/dio.dart';

abstract class HTTPClient {
  Future<Object?> get(String host, {Map<String, dynamic>? data});
  Future<Object?> post(String host, {Map<String, dynamic>? data});
  Future<Object?> put(String host, {Map<String, dynamic>? data});
  Future<Object?> delete(String host, {Map<String, dynamic>? data});
}

class DioClient implements HTTPClient {
  final Dio _client;

  DioClient(this._client);

  @override
  Future<Object?> delete(String host, {Map<String, dynamic>? data}) async {
    return await _client.delete(
      host,
      data: data,
    );
  }

  @override
  Future<Object?> get(String host, {Map<String, dynamic>? data}) async {
    return await _client.get(
      host,
      data: data,
    );
  }

  @override
  Future<Object?> post(String host, {Map<String, dynamic>? data}) async {
    return await _client.post(
      host,
      data: data,
    );
  }

  @override
  Future<Object?> put(String host, {Map<String, dynamic>? data}) async {
    return await _client.put(
      host,
      data: data,
    );
  }
}
