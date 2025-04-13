import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/common/widgets/containers/color_container.dart';
import 'package:maknana/utlis/constants/colors.dart';
import 'package:maknana/utlis/constants/text.dart';

class TaskDetill extends StatelessWidget {
  const TaskDetill({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h, right: 25.w, left: 25.w),
      child: Column(
        spacing: 25.h,
        children: [
          SizedBox(
            child: Column(
              children: [
                Text(
                  AppText.taskDetillTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  AppText.taskDetillSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
            width: 169.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorContainer(
                    color: AppColors.green.withValues(alpha: 0.25),
                    title: AppText.taskDetillColor1,
                    textColor: AppColors.green),
                ColorContainer(
                    width: 108,
                    color: AppColors.green.withValues(alpha: 0.25),
                    title: AppText.taskDetillColor2,
                    textColor: AppColors.green),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              spacing: 15.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.taskDetillCardTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: EdgeInsets.all(5.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          spacing: 15.w,
                          children: [
                            CircleAvatar(
                              radius: 23.r,
                              backgroundColor:
                                  Colors.purple.withValues(alpha: 0.15),
                              child: Text(
                                'A',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .apply(color: Colors.purple),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 2.h,
                              children: [
                                Text(
                                  AppText.taskDetillCardname,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  AppText.taskDetillCardPhone,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(color: AppColors.textPrimary),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ColorContainer(
                          width: 81,
                          color: AppColors.green.withValues(alpha: 0.25),
                          title: AppText.taskDetillCardJob,
                          textColor: AppColors.green),
                    ],
                  ),
                ),
                Row(
                  spacing: 15.w,
                  children: [
                    SizedBox(
                      height: 40.h,
                      width: 123.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 8.w,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.call_outlined,
                              size: 20.r,
                              color: AppColors.textButton,
                            ),
                            Text(
                              AppText.taskDetillCardbutton1,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: AppColors.textButton),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                      width: 123.w,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 8.w,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              size: 20.r,
                              color: AppColors.primary,
                            ),
                            Text(
                              AppText.taskDetillCardbutton2,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: AppColors.primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(),
          SizedBox(
            height: 48.h,
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                spacing: 5.w,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppText.taskDetillMapbutton,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: AppColors.primary),
                  ),
                  Icon(
                    Icons.fmd_good_outlined,
                    size: 20.r,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),
          ),
          TextButton(
              onPressed: () => Get.back(),
              child: Text(
                AppText.taskDetillBackbutton,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(color: AppColors.textSecondary),
              ))
        ],
      ),
    );
  }
}
