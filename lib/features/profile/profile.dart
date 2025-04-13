import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/common/widgets/row/invoice_row.dart';
import 'package:maknana/features/navigation_menu.dart';
import 'package:maknana/features/profile/edite_screen.dart';
import 'package:maknana/utlis/constants/colors.dart';
import 'package:maknana/utlis/constants/text.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.profileTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Center(
              child: Column(
                spacing: 5.h,
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
                    AppText.profileName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            InvoiceRow(
                icon: Icons.build_outlined,
                height: 75,
                size: 25,
                radius: 20,
                title: AppText.profileJob,
                child: SizedBox(
                  width: 0,
                  height: 0,
                )),
            InvoiceRow(
                icon: Icons.call_outlined,
                height: 75,
                size: 25,
                radius: 20,
                title: AppText.profilePhone,
                child: SizedBox(
                  width: 0,
                  height: 0,
                )),
            InvoiceRow(
                icon: Icons.email_outlined,
                height: 75,
                size: 25,
                radius: 20,
                title: AppText.profileEmail,
                child: SizedBox(
                  width: 0,
                  height: 0,
                )),
            Center(
              child: TextButton.icon(
                onPressed: () => controller.navigateToScreen(EditeScreen()),
                label: Text(
                  AppText.editeButton,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: AppColors.buttonPrimary),
                ),
                icon: Icon(
                  Icons.edit_outlined,
                  color: AppColors.buttonPrimary,
                  size: 23.r,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
