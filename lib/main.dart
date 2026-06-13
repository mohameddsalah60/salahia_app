import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/app_routes.dart';
import 'core/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Salahia',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: 'Cairo',
        primaryColor: AppColors.mainBlue,
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}
