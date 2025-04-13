import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/common/widgets/button/elevated_list_button.dart';
import 'package:maknana/utlis/constants/colors.dart';
import 'package:maknana/utlis/constants/text.dart';

import '../../common/widgets/containers/card_detill.dart';

class InvoiceDetillScreen extends StatelessWidget {
  const InvoiceDetillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20.w),
      child: Column(
        spacing: 10,
        children: [
          Text(
            AppText.invoiceDetillTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            AppText.invoiceDetillSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Column(
              children: [
                CardDetill(
                  title: AppText.invoiceDetillCardTitle1,
                  subTitle: AppText.invoiceDetillBody1,
                ),
                CardDetill(
                  title: AppText.invoiceDetillCardTitle1,
                  subTitle: AppText.invoiceDetillBody1,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButtonList(
                onPressed: () {},
                isIcon: true,
                spacing: 5,
                width: 170,
                height: 45,
                title: AppText.invoiceDetillButton1,
                icon: Icons.edit_outlined,
              ),
              ElevatedButtonList(
                onPressed: () {},
                isIcon: true,
                spacing: 5,
                width: 170,
                height: 45,
                title: AppText.invoiceDetillButton2,
                icon: Icons.file_download_outlined,
                color: AppColors.textPrimary,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              AppText.backButton,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
