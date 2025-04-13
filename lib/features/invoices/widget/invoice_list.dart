import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/utlis/popups/app_bottom_sheet.dart';

import '../../../common/widgets/button/elevated_list_button.dart';
import '../../../common/widgets/containers/color_container.dart';
import '../../../common/widgets/layouts/list_layout.dart';
import '../../../common/widgets/row/row_detill.dart';
import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';
import '../invoice_detill_screen.dart';

class InvoiceList extends StatelessWidget {
  const InvoiceList({
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
                spacing: 11.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppText.invoicesListTitle,
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
                        title: AppText.invoicesListDetill1,
                      ),
                      RowDetill(
                        icon: Icons.location_on_outlined,
                        title: AppText.invoicesListDetill2,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8.w,
                    children: [
                      ElevatedButtonList(
                        onPressed: () => AppShowBottomSheet.showBottomSheet(
                            600.w, InvoiceDetillScreen()),
                        title: AppText.invoicesListBt1,
                      ),
                      ElevatedButtonList(
                        onPressed: () {},
                        title: AppText.invoicesListBt2,
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
