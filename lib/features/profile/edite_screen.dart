import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:maknana/features/profile/profile.dart';
import 'package:maknana/utlis/constants/text.dart';

import '../../utlis/constants/colors.dart';
import '../navigation_menu.dart';

class EditeScreen extends StatelessWidget {
  EditeScreen({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 35.w),
          child: Column(
            spacing: 15.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.editeTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Row(
                spacing: 10.w,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 30.r,
                      backgroundColor: AppColors.app,
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: AppColors.primary,
                        size: 25.r,
                      ),
                    ),
                  ),
                  Text(
                    AppText.editeAddPhoto,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: AppColors.buttonPrimary),
                  )
                ],
              ),
              Form(
                child: Column(
                  spacing: 25.h,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle_outlined),
                        label: Text(AppText.name),
                      ),
                    ),
                    IntlPhoneField(
                      showCountryFlag: false,
                      decoration: InputDecoration(
                          suffixIconColor: AppColors.textPrimary,
                          suffixIcon: Icon(Icons.call_outlined),
                          label: Text(AppText.phone),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.textSecondary))),
                      initialCountryCode: 'SA',
                      dropdownTextStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.textPrimary),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        label: Text(AppText.editeEmail),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: SizedBox(
                  height: 48.h,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          controller.navigateToScreen(ProfileScreen()),
                      child: Text(
                        AppText.editebutton,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: AppColors.textButton),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
