import 'package:flutter/material.dart';

import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';


class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: AppColors.textSecondary,
            thickness: 0.5,
            indent: 5,
            endIndent: 15,
          ),
        ),
        Text(
          AppText.or,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: AppColors.textSecondary,
            thickness: 0.5,
            indent: 15,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}