import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ColorContainer extends StatelessWidget {
  const ColorContainer({
    super.key,
    required this.color,
    required this.title,
    required this.textColor,  this.height = 20,  this.width = 37,
  });

  final Color color, textColor;
  final String title;
  final double height,width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.r)
      ),
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(title,
              style:
              Theme.of(context).textTheme.labelSmall!.apply(color: textColor)),
        ),
      ),
    );
  }
}