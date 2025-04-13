import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../constants/text.dart';



class AppDatePicker {
  static void showBottomSheet() {
    final now = DateTime.now();
    final firstDay = DateTime(now.year - 1);
    final lastDay = DateTime(now.year + 1);
    showDatePicker(
      cancelText: AppText.cancelButton,
      confirmText: AppText.showButton,
      context: Get.overlayContext!,
      firstDate: firstDay,
      lastDate: lastDay,
      builder: (_, child) {
        return SizedBox(
          child: child,
        );
      },
    );
  }
}
