import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utlis/constants/colors.dart';

class RowDetill extends StatelessWidget {
  const RowDetill({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3.w,
      children: [
        Icon(
          icon,
          size: 20.r,
          color: AppColors.textSecondary,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        )
      ],
    );
  }
}