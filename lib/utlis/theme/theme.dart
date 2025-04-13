import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_theme/app_bottom_sheet_theme.dart';
import 'custom_theme/app_card_theme.dart';
import 'custom_theme/app_date_picker_theme.dart';
import 'custom_theme/app_text_field_theme.dart';
import 'custom_theme/app_text_theme.dart';
import 'custom_theme/appbar_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/elevated_botton_theme.dart';
import 'custom_theme/outlinebotton_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData englishTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedBottomTheme,
    checkboxTheme: AppCheckBoxTheme.checkBoxTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.appOutLineTheme,
    bottomSheetTheme: AppBottomSheetTheme.appBottomSheetTheme,
    textTheme: AppTextTheme.appTextTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
    cardTheme: AppCardTheme.appCardTheme,
    datePickerTheme: AppDatePickerTheme.appDatePicker,
  );

  static ThemeData arabicTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedBottomTheme,
    checkboxTheme: AppCheckBoxTheme.checkBoxTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.appOutLineTheme,
    bottomSheetTheme: AppBottomSheetTheme.appBottomSheetTheme,
    textTheme: AppTextTheme.appTextTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
    cardTheme: AppCardTheme.appCardTheme,
    datePickerTheme: AppDatePickerTheme.appDatePicker,

  );

  static ThemeData getTheme(String languageCode) {
    if (languageCode == 'ar') {
      return arabicTheme;
    } else {
      return englishTheme;
    }
  }
}