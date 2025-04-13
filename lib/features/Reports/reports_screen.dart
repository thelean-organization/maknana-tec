import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/features/Reports/widgets/create_new_report.dart';
import 'package:maknana/features/Reports/widgets/reports_header.dart';
import 'package:maknana/features/Reports/widgets/reports_list.dart';

import '../../common/widgets/button/floating_button.dart';
import '../../common/widgets/images/image_container.dart';
import '../../utlis/popups/app_bottom_sheet.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

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
              ReportHeader(),
              ReportList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingButton(
        onPressed: () => AppShowBottomSheet.showBottomSheet(
          700.h,
          CreateNewReport(),
        ),
      ),
    );
  }
}
