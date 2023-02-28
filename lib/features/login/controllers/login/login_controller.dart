import 'package:flutter/material.dart';
import 'package:homi/shared/models/user_model.dart';
import 'package:homi/features/login/repositories/login_repository.dart';

part 'login_state.dart';

class LoginController extends ValueNotifier<LoginState> {
  final ILoginRepository loginRepository;
  LoginController(this.loginRepository) : super(LoginInitialState(user: '', password: ''));

  void usernameInputChanged(String user) {
    final currentState = value as LoginInitialState;
    value = LoginInitialState(user: user, password: currentState.password);
  }

  void passwordInputChanged(String password) {
    final currentState = value as LoginInitialState;
    value = LoginInitialState(user: currentState.user, password: password);
  }

  Future<void> login() async {
    final currentState = value as LoginInitialState;
    value = LoginLoadingState();
    final response = await loginRepository.authenticateLogin(
      username: currentState.user,
      password: currentState.password,
    );

    if (response != null) {
      value = LoginAuthenticatedState(response);
    } else {
      value = LoginAuthenticateFailure();
      value = LoginInitialState(user: '', password: '');
    }
  }
}
