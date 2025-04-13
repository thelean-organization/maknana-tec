import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utlis/constants/colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 30.w),
      child: SizedBox.square(
        dimension: 50.r,
        child: FloatingActionButton(
          backgroundColor: AppColors.primary,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
          onPressed: onPressed,
          child: Icon(
            Icons.add_circle_outline_rounded,
            color: AppColors.textButton,
            size: 40.r,
          ),
        ),
      ),
    );
  }
}