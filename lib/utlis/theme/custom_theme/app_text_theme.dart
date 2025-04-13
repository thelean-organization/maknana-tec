import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme appTextTheme =TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize:  31.sp , fontWeight: FontWeight.w700, color: AppColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(
        fontSize:  24.sp , fontWeight: FontWeight.w700, color: AppColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(
        fontSize:  18.sp , fontWeight: FontWeight.w700, color: AppColors.textPrimary),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.sp , fontWeight: FontWeight.w400, color: AppColors.textPrimary),
    titleSmall: const TextStyle().copyWith(
        fontSize:  16.sp , fontWeight: FontWeight.w400, color: AppColors.textSecondary),
    bodyLarge: const TextStyle().copyWith(
        fontSize:  14.sp , fontWeight: FontWeight.w700, color: AppColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(
        fontSize:  14.sp , fontWeight: FontWeight.w400, color: AppColors.textSecondary),
    bodySmall: const TextStyle().copyWith(
        fontSize:  13.sp ,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary),
    labelLarge: const TextStyle().copyWith(
        fontSize:  12.sp , fontWeight: FontWeight.w400, color: AppColors.textPrimary),
    labelMedium: const TextStyle().copyWith(
        fontSize:  12.sp , fontWeight: FontWeight.w400,
        color: AppColors.textSecondary),
    labelSmall: const TextStyle().copyWith(
        fontSize:  10.sp , fontWeight: FontWeight.w400,
        color: AppColors.textSecondary),
  );
}