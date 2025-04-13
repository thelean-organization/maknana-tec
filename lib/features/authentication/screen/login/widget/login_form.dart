import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/features/authentication/screen/forgotpassword/forgot_password.dart';

import '../../../../../utlis/constants/colors.dart';
import '../../../../../utlis/constants/text.dart';
import '../../../../navigation_menu.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 20.h,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
              ),
              hintText: AppText.email,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
              hintText: AppText.password,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: true, onChanged: (_) {}),
                  Text(AppText.rememberMe,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
              TextButton(
                onPressed: () => Get.offAll(() => ForgotPassword()),
                child: Text(AppText.forgetPassword,
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ],
          ),
          SizedBox(
            width: 265.w,
            height: 48.h,
            child: ElevatedButton(
              onPressed: () => Get.offAll(() => NavigationMenu()),
              child: Text(AppText.loginButton,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .apply(color: AppColors.textButton)),
            ),
          ),
        ],
      ),
    );
  }
}
