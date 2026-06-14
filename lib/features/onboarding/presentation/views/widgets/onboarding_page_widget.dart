import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/onboarding_page_data.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    super.key,
    required this.data,
    required this.pageIndex,
    required this.currentPage,
  });

  final OnboardingPageData data;
  final int pageIndex;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final isActive = pageIndex == currentPage;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          FadeInDown(
            duration: const Duration(milliseconds: 600),
            animate: isActive,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.mainBlue,
                        AppColors.mainBlue.withValues(alpha: 0.7),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.verified_outlined,
                    color: Colors.white,
                    size: 22.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  'صلاحية',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.mainBlue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Expanded(
            child: FadeIn(
              duration: const Duration(milliseconds: 700),
              animate: isActive,
              child: data.buildIllustration(),
            ),
          ),
          SizedBox(height: 24.h),
          FadeInUp(
            duration: const Duration(milliseconds: 600),
            delay: const Duration(milliseconds: 100),
            animate: isActive,
            child: Text(
              data.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 26.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
                height: 1.4,
              ),
            ),
          ),
          SizedBox(height: 14.h),
          FadeInUp(
            duration: const Duration(milliseconds: 600),
            delay: const Duration(milliseconds: 200),
            animate: isActive,
            child: Text(
              data.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
                height: 1.7,
              ),
            ),
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
