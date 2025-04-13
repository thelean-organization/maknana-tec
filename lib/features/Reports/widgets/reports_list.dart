import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/common/widgets/row/row_detill.dart';

import '../../../common/widgets/button/elevated_list_button.dart';
import '../../../common/widgets/containers/color_container.dart';
import '../../../common/widgets/layouts/grid_layout.dart';
import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';

class ReportList extends StatelessWidget {
  const ReportList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppGridLayout(
      itemCount: 6,
      itemBuilder: (_, index) {
        return Card.outlined(
          child: SizedBox(
            width: 181.w,
            height: 125.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 13.w, horizontal: 25.w),
              child: Column(spacing: 8.h, children: [
                Text(
                  AppText.reportsListTitle,
                  style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: AppColors.textPrimary, fontWeightDelta: 700),
                ),
                ColorContainer(
                    height: 20,
                    width: double.infinity.w,
                    color: AppColors.green.withValues(alpha: 0.25),
                    title: AppText.reportsListDetill2,
                    textColor: AppColors.green),
                RowDetill(
                  icon: Icons.access_time,
                  title: AppText.reportsListDetill1,
                ),
                ElevatedButtonList(
                  height: 25.h,
                  width: double.infinity,
                  onPressed: () {},
                  title: AppText.reportsListBt1,
                ),
                ElevatedButtonList(
                  height: 25.h,
                  width: double.infinity,
                  onPressed: () {},
                  title: AppText.reportsListBt2,
                  color: AppColors.textPrimary,
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
