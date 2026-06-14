import 'package:flutter/material.dart';
import 'package:salahia/features/auth/presentation/views/sign_in_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';
import 'app_routes.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const SignInView());
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('404 Not Found'))),
        );
    }
  }
}
