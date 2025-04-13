import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utlis/constants/images.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.loginBackGround),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: SvgPicture.asset(
          height: 65.h,
          width: 127.w,
          AppImage.loginImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}