import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homi/screens/lights_screen.dart';
import 'package:homi/screens/login_screen.dart';
import 'package:homi/screens/register_screen.dart';
import 'package:homi/screens/temperature_screen.dart';
import '../screens/bottom_navigation_screen.dart';
import 'route.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case dashboardRoute:
        return getPageRoute(
          settings: settings,
          view: const BottomNavigationScreen(),
        );

      case loginRoute:
        return getPageRoute(
          settings: settings,
          view: const LoginScreen(),
        );

      case registerRoute:
        return getPageRoute(
          settings: settings,
          view: const RegisterScreen(),
        );

      case temperatureRoute:
        return getPageRoute(
          settings: settings,
          view: const TempatureScreen(),
        );

      case lightRoute:
        return getPageRoute(
          settings: settings,
          view: const LightsScreen(),
        );

      default:
        return getPageRoute(
          settings: settings,
          view: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static PageRoute<dynamic> getPageRoute({
    required RouteSettings settings,
    required Widget view,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(settings: settings, builder: (_) => view)
        : MaterialPageRoute(settings: settings, builder: (_) => view);
  }
}
