import 'package:homi/shared/models/user_model.dart';
import 'package:homi/features/login/repositories/login_repository.dart';

class LoginRepositoryDecorator implements ILoginRepository {
  final ILoginRepository loginRepository;

  LoginRepositoryDecorator(this.loginRepository);

  @override
  Future<UserModel?> authenticateLogin({
    required String username,
    required String password,
  }) async {
    return await loginRepository.authenticateLogin(username: username, password: password);
  }
}
