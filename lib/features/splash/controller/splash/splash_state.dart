part of 'splash_controller.dart';

abstract class SplashState {}

class SplashLoadingState extends SplashState {}

class SplashInitializedWithoutUserState extends SplashState {}

class SplashInitializedWithUserState extends SplashState {
  final UserModel user;

  SplashInitializedWithUserState(
    this.user,
  );
}

class SplashLoadedFailure extends SplashState {}
