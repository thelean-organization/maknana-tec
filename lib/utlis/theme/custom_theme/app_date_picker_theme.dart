import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppDatePickerTheme {
  AppDatePickerTheme._();

  static DatePickerThemeData appDatePicker = DatePickerThemeData(
    backgroundColor: AppColors.textButton,
    headerForegroundColor: Colors.white,
    headerBackgroundColor: AppColors.primary,
    todayForegroundColor: WidgetStatePropertyAll(Colors.red),
    todayBorder: BorderSide(
      color: Colors.red,
    ),
    yearStyle: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    dayStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    weekdayStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    cancelButtonStyle: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.red),
        textStyle: WidgetStatePropertyAll(TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ))),
    confirmButtonStyle: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.red),
        textStyle: WidgetStatePropertyAll(TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ))),
    headerHeadlineStyle: TextStyle(
        color: Colors.white, fontSize: 32, fontWeight: FontWeight.w400),
  );
}
