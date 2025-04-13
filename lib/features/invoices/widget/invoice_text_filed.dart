import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';

class InvoiceTextFiled extends StatelessWidget {
  const InvoiceTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        spacing: 3.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.invoiceSetting,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            AppText.invoiceSettingSupTitle,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'OoohBaby',
                fontSize: 25.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.textPrimary),
          ),
        ],
      ),
    );
  }
}