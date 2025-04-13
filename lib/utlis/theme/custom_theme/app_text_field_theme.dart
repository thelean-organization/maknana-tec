import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.black,
    suffixIconColor: AppColors.textSecondary,
    labelStyle: const TextStyle().copyWith(fontSize: 14.sp, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
    const TextStyle().copyWith(color: Colors.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(width: 1, color: AppColors.textSecondary,)),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(width: 1, color: AppColors.textSecondary,),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(width: 1, color: AppColors.textSecondary,),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}