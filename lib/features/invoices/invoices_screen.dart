import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/common/widgets/images/image_container.dart';
import 'package:maknana/features/invoices/invoice_setting.dart';
import 'package:maknana/features/invoices/widget/invoice_filter.dart';
import 'package:maknana/features/invoices/widget/invoice_list.dart';

import '../../common/widgets/button/floating_button.dart';
import '../../utlis/popups/app_bottom_sheet.dart';

class InvoicesScreen extends StatelessWidget {
  const InvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 30.w),
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageContainer(),
              InvoiceFilter(),
              InvoiceList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingButton(
          onPressed: () =>
              AppShowBottomSheet.showBottomSheet(800.h, InvoiceSetting())),
    );
  }
}
