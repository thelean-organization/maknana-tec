import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class AppOutlineButtonTheme {
  AppOutlineButtonTheme._();

  static final appOutLineTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 9.h),
        textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textButton),
        side: const BorderSide(color: AppColors.primary,width: 1,),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r),)),
  );
}