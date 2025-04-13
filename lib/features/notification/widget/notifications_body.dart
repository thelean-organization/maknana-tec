import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widgets/button/elevated_list_button.dart';
import '../../../common/widgets/containers/color_container.dart';
import '../../../common/widgets/layouts/list_layout.dart';
import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.w),
        child: Column(
          spacing: 25.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppText.notificationsTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppText.notificationsTextButton,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .apply(color: Colors.blue),
                  ),
                ),
              ],
            ),
            ListLayout(
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Card.outlined(
                    shape: RoundedRectangleBorder(side: BorderSide.none),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      child: Column(
                        spacing: 12.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  AppText.notificationsListTitle,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  maxLines: 3,
                                ),
                              ),
                              ColorContainer(
                                  color: AppColors.textSecondary
                                      .withValues(alpha: 0.2),
                                  title: AppText.notificationsListColorCon,
                                  textColor: AppColors.textSecondary)
                            ],
                          ),
                          Text(
                            AppText.notificationsListSubTitle,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          ElevatedButtonList(
                            onPressed: () {},
                            title: AppText.notificationsListButton,
                            isIcon: false,
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
