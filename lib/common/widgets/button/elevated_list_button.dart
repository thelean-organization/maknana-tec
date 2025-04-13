import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utlis/constants/colors.dart';


class ElevatedButtonList extends StatelessWidget {
  const ElevatedButtonList({
    super.key,
    required this.onPressed,
    required this.title,
    this.color = AppColors.primary,
    this.width = 102,
    this.height = 30,  this.icon,
    this.spacing = 0,  this.isIcon = false,
  });

  final VoidCallback onPressed;
  final String title;
  final Color color;
  final double width, height;
  final IconData? icon;
  final double spacing;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: spacing.w,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: AppColors.textButton),
                ),
              ),
              isIcon ?
              Icon(icon,color: AppColors.textButton,size: 20.r,) : SizedBox(height: 0,width: 0,) ,
            ],
          )),
    );
  }
}