import 'package:flutter/material.dart';
import 'package:homi/core/route/routes.dart';
import 'package:homi/features/repository_registry.dart';
import 'package:homi/features/splash/controller/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController splashController =
      RepositoryRegistry.instance.resolve<SplashController>();

  @override
  void initState() {
    splashController.initializeApp();
    splashController.addListener(() {
      var state = splashController.value;
      switch (state.runtimeType) {
        case SplashInitializedWithUserState:
          state as SplashInitializedWithUserState;
          Navigator.of(context).pushReplacementNamed(
            home,
            arguments: {'userName': state.user.nome},
          );
          break;
        case SplashInitializedWithoutUserState:
          Navigator.of(context).pushReplacementNamed(login);
          break;
        default:
          break;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(6),
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
