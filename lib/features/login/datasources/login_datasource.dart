import 'dart:io';

import 'package:dio/dio.dart';
import 'package:homi/shared/models/user_model.dart';
import 'package:homi/generated/iot_service.pbgrpc.dart';
import 'package:homi/network/api/http_client.dart';

abstract class ILoginDatasource {
  Future<UserModel?> login({
    required String username,
    required String password,
  });
}

class LoginDatasource implements ILoginDatasource {
  final IoTServiceClient? grpcClient;
  final HTTPClient? httpClient;

  LoginDatasource(this.grpcClient, this.httpClient);

  @override
  Future<UserModel?> login({
    required String username,
    required String password,
  }) async {
    try {
      if (Platform.isAndroid || Platform.isIOS) {
        final response = await grpcClient!.getAccessToken(
          Credentials(login: username, password: password),
        );
        if (response.token.isNotEmpty) {
          return UserModel(token: response.token, nome: username);
        }

        throw Exception();
      } else {
        final body = {'login': username, 'password': password};
        final response = await httpClient!.get('auth', data: body);

        if ((response as Response).statusCode == 200) {
          final token = response.data['token'];

          return UserModel(token: token, nome: username);
        }

        throw Exception();
      }
    } catch (e) {
      return null;
    }
  }
}
