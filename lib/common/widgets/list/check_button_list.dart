import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/common/widgets/layouts/list_layout.dart';
import 'package:maknana/utlis/constants/colors.dart';

import '../../../utlis/constants/text.dart';

class CheckButtonList extends StatelessWidget {
  const CheckButtonList(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.places});

  final String title, subTitle;
  final List<String> places;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
        child: Column(
          spacing: 10.h,
          children: [
            SizedBox(
              child: Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .apply(color: AppColors.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ListLayout(
                itemCount: places.length,
                itemBuilder: (_, index) {
                  final RxBool changeValue = false.obs;
                  return SizedBox(
                    height: 64.h,
                    child: Card.outlined(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                      value: changeValue.value,
                                      onChanged: (value) {
                                        changeValue.value = value ?? true;
                                      }),
                                  Text(
                                      places.isNotEmpty && index < places.length
                                          ? places[index]
                                          : 'غير متوفر',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .apply(color: AppColors.textPrimary)),
                                ],
                              ),
                            ),
                            Divider(
                              indent: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 48.h,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    AppText.showButton,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(color: AppColors.textButton),
                  )),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                AppText.cancelButton,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
