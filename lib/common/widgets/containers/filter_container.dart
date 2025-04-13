import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key,
    required this.title,
    required this.mainIcon,
    required this.tapIcon,
    required this.onTap,
  });

  final String title;
  final IconData mainIcon, tapIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: EdgeInsets.zero,
      child: SizedBox(
        height: 36.h,
        width: 160.w,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 7.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 3.w,
                  children: [
                    Icon(
                      mainIcon,
                      size: 18.r,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Icon(
                    tapIcon,
                    size: 18.r,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
