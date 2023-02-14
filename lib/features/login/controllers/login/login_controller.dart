import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginController extends ValueNotifier<LoginState> {
  LoginController() : super(LoginInitialState(user: '', password: ''));
}
