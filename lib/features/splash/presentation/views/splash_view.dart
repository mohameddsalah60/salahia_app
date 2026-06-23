import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:salahia/core/helpers/extinctions.dart';
import 'package:salahia/core/routing/app_routes.dart';
import 'package:salahia/core/utils/app_images.dart';

import '../../../../core/utils/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
    );

    _opacityAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.7, 1.0, curve: Curves.easeInQuad),
      ),
    );

    _animationController.forward().then((_) {
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.mainBlue,
              AppColors.mainBlue.withValues(alpha: 0.8),
              AppColors.secondary.withValues(alpha: 0.6),
            ],
          ),
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: Transform.scale(
                  scale: _scaleAnimation.value,
                  child: ElasticIn(
                    duration: const Duration(milliseconds: 1800),
                    child: Image.asset(
                      AppImages.appLogo,
                      width: context.width(0.80),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
