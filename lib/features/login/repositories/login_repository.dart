import 'package:homi/features/login/datasources/login_datasource.dart';
import 'package:homi/shared/models/user_model.dart';

abstract class ILoginRepository {
  Future<UserModel?> authenticateLogin({
    required String username,
    required String password,
  });
}

class LoginRepository extends ILoginRepository {
  final ILoginDatasource loginDatasource;

  LoginRepository(this.loginDatasource);

  @override
  Future<UserModel?> authenticateLogin({
    required String username,
    required String password,
  }) async {
    return await loginDatasource.login(username: username, password: password);
  }
}
