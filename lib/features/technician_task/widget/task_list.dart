import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/features/technician_task/task_details.dart';
import 'package:maknana/features/technician_task/task_detill.dart';
import 'package:maknana/utlis/popups/app_bottom_sheet.dart';

import '../../../common/widgets/button/elevated_list_button.dart';
import '../../../common/widgets/containers/color_container.dart';
import '../../../common/widgets/layouts/list_layout.dart';
import '../../../common/widgets/row/row_detill.dart';
import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListLayout(
      itemCount: 4,
      itemBuilder: (_, index) {
        return Card.outlined(
          child: SizedBox(
            width: double.infinity,
            height: 120.w,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 15.w),
              child: Column(
                spacing: 10.w,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppText.taskListTitle,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      ColorContainer(
                        color: AppColors.green.withValues(alpha: 0.25),
                        title: AppText.taskListCon,
                        textColor: AppColors.green,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 4.w,
                    children: [
                      RowDetill(
                        icon: Icons.access_time,
                        title: AppText.taskListDetill1,
                      ),
                      RowDetill(
                        icon: Icons.location_on_outlined,
                        title: AppText.taskListDetill2,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8.w,
                    children: [
                      ElevatedButtonList(
                        onPressed: () => AppShowBottomSheet.showBottomSheet(
                            680.h, TaskDetails()),
                        title: AppText.taskListBt1,
                      ),
                      ElevatedButtonList(
                        onPressed: () => AppShowBottomSheet.showBottomSheet(
                            566.h, TaskDetill()),
                        title: AppText.taskListBt2,
                        color: AppColors.textPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
