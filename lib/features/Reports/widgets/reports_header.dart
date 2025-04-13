import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/utlis/popups/app_date_picker.dart';

import '../../../common/widgets/containers/filter_container.dart';
import '../../../common/widgets/list/check_button_list.dart';
import '../../../utlis/constants/text.dart';
import '../../../utlis/popups/app_bottom_sheet.dart';

class ReportHeader extends StatelessWidget {
  const ReportHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: double.infinity,
      child: Column(
        spacing: 8.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.reportsTitle,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilterContainer(
                title: AppText.taskFilter1,
                mainIcon: Icons.layers_outlined,
                tapIcon: Icons.keyboard_arrow_down_sharp,
                onTap: () => AppDatePicker.showBottomSheet(),
              ),
              FilterContainer(
                title: AppText.reportsFilter2,
                mainIcon: Icons.people_outline_rounded,
                tapIcon: Icons.keyboard_arrow_down_sharp,
                onTap: () => AppShowBottomSheet.showBottomSheet(
                    626.h,
                    CheckButtonList(
                      title: AppText.reportFilterTitle,
                      subTitle: AppText.reportFilterSubTitle,
                      places: AppText.reportFilterPlace,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
