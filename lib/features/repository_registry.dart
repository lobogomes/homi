import 'dart:io';

import 'package:dio/dio.dart';
import 'package:homi/core/database/i_key_value_database.dart';
import 'package:homi/core/database/shared_preferences_database.dart';
import 'package:homi/core/registry/registry.dart';
import 'package:homi/features/login/datasources/login_datasource.dart';
import 'package:homi/features/login/decorators/login_repository_cache_decorator.dart';
import 'package:homi/features/login/repositories/login_repository.dart';
import 'package:homi/generated/iot_service.pbgrpc.dart';
import 'package:homi/network/api/grpc_client.dart';
import 'package:homi/network/api/http_client.dart';

class RepositoryRegistry extends Registry {
  static final _instance = RepositoryRegistry._();
  static RepositoryRegistry get instance => _instance;

  RepositoryRegistry._();
}

Future<void> initRegister() async {
  RepositoryRegistry.instance.register<IoTServiceClient>(Record(builder: () => GRPCClient.instance.stub));

  RepositoryRegistry.instance.register<Dio>(Record(builder: () => Dio()));
  RepositoryRegistry.instance.register<HTTPClient>(Record(
    builder: () => DioClient(RepositoryRegistry.instance.resolve<Dio>()),
  ));

  RepositoryRegistry.instance
    ..register<IKeyValueStorageDatabase>(
      Record(
        builder: () => SharedPreferencesDatabase(),
      ),
    )
    ..register<ILoginDatasource>(
      Record(
        builder: () => LoginDatasource(RepositoryRegistry.instance.resolveOrNull<IoTServiceClient>(),
            RepositoryRegistry.instance.resolveOrNull<HTTPClient>()),
      ),
    )
    ..register<ILoginRepository>(
      Record(
        builder: () => LoginRepositoryCacheDecorator(
          LoginRepository(
            RepositoryRegistry.instance.resolve<ILoginDatasource>(),
          ),
          database: RepositoryRegistry.instance.resolve<IKeyValueStorageDatabase>(),
        ),
      ),
    );
}
