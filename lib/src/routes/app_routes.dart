import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/sign_in_screen.dart';
import 'package:greengrocer/src/auth/sign_up_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get appRoutes {
    return {
      '/login': (context) => const SignInScreen(),
      '/signup': (context) => const SignUpScreen(),
    };
  }
}
