import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/common/widgets/containers/card_detill.dart';
import 'package:maknana/common/widgets/containers/color_container.dart';
import 'package:maknana/utlis/constants/colors.dart';

import '../../utlis/constants/text.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.w, right: 25.w, left: 25.w),
      child: Column(
        children: [
          SizedBox(
            child: Column(
              children: [
                Text(
                  AppText.taskDetailsTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  AppText.taskDetailsSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox.square(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15.w,
              children: [
                ColorContainer(
                  height: 24,
                  color: AppColors.green.withValues(alpha: 0.25),
                  title: AppText.taskListCon,
                  textColor: AppColors.green,
                ),
                ColorContainer(
                  height: 24,
                  width: 110,
                  color: AppColors.green.withValues(alpha: 0.25),
                  title: AppText.taskListDetill1,
                  textColor: AppColors.green,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            child: Column(
              children: [
                CardDetill(
                    title: AppText.taskDetailsCardTitle1,
                    subTitle: AppText.taskDetailsCardBody1),
                CardDetill(
                    height: 180,
                    title: AppText.taskDetailsCardTitle2,
                    subTitle: AppText.taskDetailsCardBody2),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 45.h,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w)),
                child: Text(
                  AppText.taskDetailsButton,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.textButton),
                )),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              AppText.taskDetailsButtonBack,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
