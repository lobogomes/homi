import 'package:homi/core/database/i_key_value_database.dart';
import 'package:homi/features/login/decorators/login_repository_decorator.dart';

import '../../../shared/models/user_model.dart';

class LoginRepositoryCacheDecorator extends LoginRepositoryDecorator {
  final IKeyValueStorageDatabase database;
  LoginRepositoryCacheDecorator(
    super.loginRepository, {
    required this.database,
  });

  @override
  Future<UserModel?> authenticateLogin({
    required String username,
    required String password,
  }) async {
    try {
      final UserModel? user = await super.authenticateLogin(username: username, password: password);

      if (user != null) {
        await storeUser(user: user);
      }

      return user;
    } catch (e) {
      return null;
    }
  }

  Future<void> storeUser({required UserModel user}) async {
    try {
      await database.save(key: 'user', value: user.toJson());
    } catch (e) {
      return;
    }
  }
}
