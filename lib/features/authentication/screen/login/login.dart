import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/features/authentication/screen/login/widget/login_form.dart';
import 'package:maknana/features/authentication/screen/login/widget/login_header.dart';
import 'package:maknana/features/authentication/screen/login/widget/title_login.dart';

import '../../../../common/widgets/divider/app_divider.dart';
import '../../../../utlis/constants/colors.dart';
import '../../../../utlis/constants/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderLogin(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 35.w),
              child: Column(
                spacing: 25.h,
                children: [
                  const TitleLogin(),
                  const LoginForm(),
                  const AppDivider(),
                  SizedBox(
                    width: 265.w,
                    height: 48.h,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          AppText.connect,
                          style: Theme.of(context).textTheme.titleMedium!.apply(
                                color: AppColors.primary,
                              ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
