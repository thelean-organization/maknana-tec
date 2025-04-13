import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/features/controllers/filter_controller.dart';
import 'package:maknana/utlis/constants/text.dart';

import '../../../utlis/constants/colors.dart';

class TimeContainer extends StatelessWidget {
  TimeContainer({
    super.key,
  });

  final FilterController controller = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppText.time,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Row(
            spacing: 10.w,
            children: [
              Container(
                height: 34.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: AppColors.textSecondary.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(6.r)),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      "",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ),
              Container(
                height: 34.h,
                width: 106.w,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F4F8),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xFFE0E3E7),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.isAM.value
                                  ? Colors.white
                                  : Color(0xFFF1F4F8),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: controller.isAM.value
                                    ? Color(0xFFE0E3E7)
                                    : Color(0xFFF1F4F8),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                AppText.morning,
                                style: controller.isAM.value
                                    ? Theme.of(context).textTheme.labelLarge
                                    : Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: !controller.isAM.value
                                  ? Colors.white
                                  : Color(0xFFF1F4F8),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: !controller.isAM.value
                                    ? Color(0xFFE0E3E7)
                                    : Color(0xFFF1F4F8),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                AppText.night,
                                style: !controller.isAM.value
                                    ? Theme.of(context).textTheme.labelLarge
                                    : Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
