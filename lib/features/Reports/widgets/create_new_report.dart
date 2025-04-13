import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/utlis/constants/colors.dart';
import 'package:maknana/utlis/constants/text.dart';

class CreateNewReport extends StatelessWidget {
  const CreateNewReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, left: 25.w, right: 25.w),
      child: Column(
        spacing: 15.w,
        children: [
          Text(
            AppText.createNewTitle,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            AppText.createNewSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Form(
              child: Column(
            spacing: 10.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownMenu(
                width: double.infinity,
                inputDecorationTheme: InputDecorationTheme(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
                textStyle: Theme.of(context).textTheme.labelSmall,
                hintText: AppText.selectClient,
                onSelected: (value) {},
                menuHeight: 150.h,
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 'Option 1', label: 'Option 1'),
                  DropdownMenuEntry(value: 'Option 2', label: 'Option 2'),
                  DropdownMenuEntry(value: 'Option 3', label: 'Option 3'),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppText.codeOfReportHint,
                ),
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: AppText.reportDetill,
                  border: InputBorder.none,
                ),
              ),
              Text(
                AppText.reportDetillHint,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 48.h,
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4.w,
                      children: [
                        Text(
                          AppText.uploadButton,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .apply(color: AppColors.primary),
                        ),
                        Icon(
                          Icons.file_upload_outlined,
                          color: AppColors.primary,
                          size: 20.r,
                        )
                      ],
                    )),
              )
            ],
          )),
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppText.saveButton,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.textButton),
                )),
          ),
          TextButton(
              onPressed: () => Get.back(),
              child: Text(AppText.cancelButton,
                  style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
