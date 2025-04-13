import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utlis/constants/colors.dart';
import '../../../../utlis/constants/text.dart';
import '../login/login.dart';
import '../login/widget/login_header.dart';


class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final ForgotController controller = Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderLogin(),
            SizedBox(
              height: 652.h,
              child: PageView(
                controller: controller.pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  controller.currentPage.value = index;
                },
                children: [
                  ForgotPasswordBody(
                    onTap: () => controller.nextPage(),
                  ),
                  OtpScreen(
                    onTap: () => controller.nextPage(),
                  ),
                  ResetPasswordScreen(
                    onTap: () => Get.offAll(() => LoginScreen()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 35.w),
      child: Column(
        spacing: 40.h,
        children: [
          SizedBox(
            child: Column(
              spacing: 20.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.forgotPasswordTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.textPrimary),
                ),
                Text(
                  AppText.forgotPasswordSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  size: 24.r,
                ),
                labelText: AppText.forgotPasswordHintText,
                labelStyle: Theme.of(context).textTheme.labelMedium),
          ),
          SizedBox(
            height: 48.h,
            width: 250.w,
            child: ElevatedButton(
                onPressed: onTap,
                child: Text(
                  AppText.forgotPasswordButton,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.textButton),
                )),
          ),
        ],
      ),
    );
  }
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 35.w),
      child: Column(
        spacing: 40.h,
        children: [
          SizedBox(
            child: Column(
              spacing: 20.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.forgotPasswordTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.textPrimary),
                ),
                Text(
                  AppText.forgotPasswordOtpSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: AppText.forgotPasswordOtpHint,
                labelStyle: Theme.of(context).textTheme.labelMedium),
          ),
          Text(
            AppText.forgotPasswordOtpText,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.primary),
          ),
          SizedBox(
            height: 48.h,
            width: 250.w,
            child: ElevatedButton(
                onPressed: onTap,
                child: Text(
                  AppText.forgotPasswordOtpButton,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.textButton),
                )),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 35.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 40.h,
        children: [
          Text(
            AppText.forgotPasswordTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: AppColors.textPrimary),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline_rounded,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
              ),
              labelText: AppText.resetPasswordHint,
              labelStyle: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                  labelText: AppText.resetPasswordHint2,
                  labelStyle: Theme.of(context).textTheme.labelMedium)),
          Center(
            child: SizedBox(
              height: 48.h,
              width: 250.w,
              child: ElevatedButton(
                  onPressed: onTap,
                  child: Text(
                    AppText.resetPasswordButton,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: AppColors.textButton),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class ForgotController extends GetxController {
  final RxInt currentPage = 0.obs;
  final RxDouble progress = 0.25.obs;
  final PageController pageController = PageController();

  void nextPage() {
    if (currentPage.value < 3) {
      currentPage.value++;
      pageController.animateToPage(
        currentPage.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
      pageController.animateToPage(
        currentPage.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
