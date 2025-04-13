import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/utlis/constants/colors.dart';

class CardDetill extends StatelessWidget {
  const CardDetill({
    super.key,
    this.height = 100,
    required this.title,
    required this.subTitle,
  });

  final double height;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.r,
      shadowColor: Colors.grey.withValues(alpha: 0.25),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 15.w),
        child: SizedBox(
          height: height.w,
          width: double.infinity,
          child: Column(
            spacing: 2.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Flexible(
                child: Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: AppColors.textSecondary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
