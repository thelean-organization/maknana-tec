import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utlis/constants/images.dart';


class HeaderLogin extends StatelessWidget {
  const HeaderLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.loginBackGround),
          fit: BoxFit.cover,
        ),
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(
          child: SvgPicture.asset(
            height: 87.h,
            width: 169.w,
            AppImage.loginImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}