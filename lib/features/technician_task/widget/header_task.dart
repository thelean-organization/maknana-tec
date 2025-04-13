import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/common/widgets/list/check_button_list.dart';
import 'package:maknana/utlis/popups/app_bottom_sheet.dart';

import '../../../common/widgets/containers/filter_container.dart';
import '../../../utlis/constants/text.dart';
import '../../../utlis/popups/app_date_picker.dart';

class HeaderTask extends StatelessWidget {
  const HeaderTask({
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
            AppText.taskTitle,
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
                title: AppText.taskFilter2,
                mainIcon: Icons.layers_outlined,
                tapIcon: Icons.keyboard_arrow_down_sharp,
                onTap: () => AppShowBottomSheet.showBottomSheet(
                    626.h,
                    CheckButtonList(
                      title: AppText.taskFilterTitle,
                      subTitle: AppText.taskFilterSubTitle,
                      places: AppText.taskFilterPlace,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
