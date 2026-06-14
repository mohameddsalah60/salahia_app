import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:salahia/core/utils/app_images.dart';

import '../../../../core/utils/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: Center(
        child: FadeOut(
          delay: const Duration(seconds: 2),
          child: Image.asset(
            AppImages.appLogo,
            width: MediaQuery.sizeOf(context).width * .80,
          ),
        ),
      ),
    );
  }
}
