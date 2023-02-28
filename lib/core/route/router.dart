import 'package:flutter/material.dart';
import 'package:homi/core/database/i_key_value_database.dart';
import 'package:homi/core/registry/registry.dart';
import 'package:homi/core/route/routes.dart';
import 'package:homi/features/home/controllers/home/home_controller.dart';
import 'package:homi/features/home/pages/home_page.dart';
import 'package:homi/features/home_functions/led/controllers/led/led_controller.dart';
import 'package:homi/features/home_functions/pages/home_functions.dart';
import 'package:homi/features/home_functions/temperature/controllers/temperature/temperature_controller.dart';
import 'package:homi/features/login/controllers/login/login_controller.dart';
import 'package:homi/features/login/pages/login_page.dart';
import 'package:homi/features/login/repositories/login_repository.dart';
import 'package:homi/features/profile/pages/profile_screen.dart';
import 'package:homi/features/repository_registry.dart';
import 'package:homi/features/splash/controller/splash/splash_controller.dart';
import 'package:homi/features/splash/pages/splash_page.dart';
import 'package:homi/screens/register_screen.dart';

class CustomRouter {
  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final routeName = settings.name;
    switch (routeName) {
      case splash:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) {
              RepositoryRegistry.instance.register<SplashController>(
                Record(
                  builder: () => SplashController(
                    RepositoryRegistry.instance.resolve<IKeyValueStorageDatabase>(),
                  ),
                ),
              );
              return const SplashPage();
            });
      case functions:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            RepositoryRegistry.instance
              ..register<LedController>(
                Record(builder: () => LedController()),
              )
              ..register<TemperatureController>(
                Record(builder: () => TemperatureController()),
              );

            return const HomeFunctionsPage();
          },
        );
      case login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            RepositoryRegistry.instance.register<LoginController>(
              Record(
                builder: () => LoginController(
                  RepositoryRegistry.instance.resolve<ILoginRepository>(),
                ),
              ),
            );
            return const LoginPage();
          },
        );
      case home:
        final args = settings.arguments as Map<String, dynamic>;
        final userName = args['userName'];
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            RepositoryRegistry.instance.register<HomeController>(
              Record(builder: () => HomeController()),
            );
            return HomePage(
              userName: userName,
            );
          },
        );
      case profile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return ProfileScreen();
          },
        );
      case register:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return RegisterScreen();
          },
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return Scaffold();
          },
        );
    }
  }
}
