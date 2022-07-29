import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/sign_in_screen.dart';
import 'package:greengrocer/src/pages/auth/sign_up_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import 'package:greengrocer/src/pages/splash/splash_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get appRoutes {
    return {
      '/splash': (context) => const SplashScreen(),
      '/login': (context) => const SignInScreen(),
      '/signup': (context) => SignUpScreen(),
      '/base_screen': (context) => const BaseScreen(),
    };
  }
}
