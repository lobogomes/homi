part of 'login_controller.dart';

abstract class LoginState {}

class LoginInitialState extends LoginState {
  final String user;
  final String password;

  LoginInitialState({required this.user, required this.password});
}
