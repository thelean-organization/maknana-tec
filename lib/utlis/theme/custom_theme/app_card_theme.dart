import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class AppCardTheme{
  static CardTheme appCardTheme = CardTheme(
    margin: EdgeInsets.only(bottom: 15.h),
    color: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(
            color: AppColors.textSecondary, width: 1.r)),
  );
}