import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utlis/constants/colors.dart';
import '../../../../../utlis/constants/text.dart';


class TitleLogin extends StatelessWidget {
  const TitleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.title1,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Row(
            spacing: 4,
            children: [
              Text(
                AppText.title2,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                AppText.title3,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .apply(color: AppColors.primary),
              ),
              Text(
                '!',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
          SizedBox(height: 15.h,),
          Text(
            AppText.supTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}