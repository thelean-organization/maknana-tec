import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class AppShowBottomSheet {
  static void showBottomSheet(double height,Widget child) {
    showModalBottomSheet(
        context: Get.overlayContext!,
        isDismissible: false,
        enableDrag: false,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (_) => Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r))
          ),
          child: child,
        ));
  }
}