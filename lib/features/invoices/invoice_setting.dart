import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/common/widgets/button/elevated_list_button.dart';
import 'package:maknana/features/invoices/widget/invoice_detill.dart';
import 'package:maknana/features/invoices/widget/invoice_text_filed.dart';
import 'package:maknana/utlis/constants/text.dart';

class InvoiceSetting extends StatelessWidget {
  const InvoiceSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
        child: Column(
          spacing: 15.h,
          children: [
            Text(
              AppText.invoiceSettingTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            InvoiceDetill(),
            InvoiceTextFiled(),
            ElevatedButtonList(
              onPressed: () {},
              title: AppText.okButton,
              height: 48,
              spacing: 5,
              isIcon: true,
              width: double.infinity,
              icon: Icons.check,
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
      ),
    );
  }
}
