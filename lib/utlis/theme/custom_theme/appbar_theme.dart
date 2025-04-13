import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  ///light theme
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    toolbarHeight: 95.w,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primary,
  );
}
