import 'package:flutter/material.dart';

import '../../../../core/utils/app_illustrations.dart';
import '../presentation/views/widgets/onboarding_illustration.dart';

class OnboardingPageData {
  const OnboardingPageData({
    required this.title,
    required this.description,
    required this.illustrationAsset,
  });

  final String title;
  final String description;
  final String illustrationAsset;

  Widget buildIllustration() =>
      OnboardingIllustration(assetPath: illustrationAsset);

  static final List<OnboardingPageData> pages = [
    OnboardingPageData(
      title: 'تابع صلاحية منتجاتك بسهولة',
      description:
          'سجل منتجاتك واحصل على تنبيهات قبل انتهاء الصلاحية بوقت كافٍ.',
      illustrationAsset: AppIllustrations.expiryTracking,
    ),
    OnboardingPageData(
      title: 'امسح الباركود في ثوانٍ',
      description: 'أضف المنتجات بسرعة باستخدام الكاميرا ومسح الباركود.',
      illustrationAsset: AppIllustrations.barcodeScanning,
    ),
    OnboardingPageData(
      title: 'تنبيهات ذكية قبل انتهاء الصلاحية',
      description: 'استقبل إشعارات تلقائية لتجنب الهدر والحفاظ على منتجاتك.',
      illustrationAsset: AppIllustrations.smartNotifications,
    ),
    OnboardingPageData(
      title: 'إدارة المخزون بكل سهولة',
      description:
          'تابع حالة المخزون والمنتجات المنتهية أو قريبة الانتهاء بشكل مستمر.',
      illustrationAsset: AppIllustrations.inventoryManagement,
    ),
  ];
}
