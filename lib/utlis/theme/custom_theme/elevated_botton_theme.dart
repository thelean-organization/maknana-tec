import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedBottomTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.primary,
      backgroundColor: AppColors.buttonPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      // side: const BorderSide(color: AppColors.primary,),
      padding: EdgeInsets.symmetric(vertical: 9.h),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48.r)),
      textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textButton),
    ),
  );

}