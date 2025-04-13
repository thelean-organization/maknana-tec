import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utlis/constants/colors.dart';

class InvoiceRow extends StatelessWidget {
  const InvoiceRow({
    super.key,
    required this.icon,
    required this.title,
    this.supTitle = '',
    this.color = AppColors.textPrimary,
    required this.child,
    this.radius = 25,
    this.size = 35,
    this.height = 85,
  });

  final IconData icon;
  final String title;
  final String supTitle;
  final Color color;
  final Widget child;
  final double radius, size, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: Card.outlined(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10.w,
                children: [
                  CircleAvatar(
                    radius: radius.r,
                    backgroundColor: AppColors.primary,
                    child: Icon(
                      icon,
                      color: AppColors.textButton,
                      size: size.r,
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: title,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: supTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: color),
                      ),
                    ],
                  )),
                ],
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
