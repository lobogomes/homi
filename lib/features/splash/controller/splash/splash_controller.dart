import 'package:flutter/material.dart';
import 'package:homi/core/database/i_key_value_database.dart';
import 'package:homi/shared/models/user_model.dart';

part 'splash_state.dart';

class SplashController extends ValueNotifier<SplashState> {
  final IKeyValueStorageDatabase database;

  SplashController(this.database) : super(SplashLoadingState());

  Future<void> initializeApp() async {
    try {
      await database.init();

      final hasUser = database.containsKey(key: 'user');

      await Future.delayed(Duration(seconds: 2));

      if (hasUser) {
        final user = UserModel.fromJson(await database.read(key: 'user'));
        value = SplashInitializedWithUserState(user);
        return;
      }

      value = SplashInitializedWithoutUserState();
    } catch (e) {
      value = SplashLoadedFailure();
    }
  }
}
