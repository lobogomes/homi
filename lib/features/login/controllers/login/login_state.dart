part of 'login_controller.dart';

abstract class LoginState {}

class LoginInitialState extends LoginState {
  final String user;
  final String password;

  LoginInitialState({required this.user, required this.password});
}

class LoginAuthenticatedState extends LoginState {
  final UserModel user;

  LoginAuthenticatedState(this.user);
}

class LoginAuthenticateFailure extends LoginState {}

class LoginLoadingState extends LoginState {}
