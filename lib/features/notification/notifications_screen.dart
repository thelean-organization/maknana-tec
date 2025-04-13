import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/features/notification/widget/notifications_body.dart';
import 'package:maknana/utlis/constants/colors.dart';
import 'package:maknana/utlis/constants/text.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 4,
          child: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    floating: true,
                    toolbarHeight: 0,
                    expandedHeight: 50.h,
                    collapsedHeight: 10.h,
                    backgroundColor: AppColors.textButton,
                    bottom: TabBar(
                        labelPadding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                        ),
                        indicatorColor: AppColors.primary,
                        unselectedLabelStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: AppColors.textSecondary),
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: AppColors.primary),
                        tabs: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Tab(text: AppText.notificationsTab1),
                              Container(
                                height: 16.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                    color: AppColors.primary
                                        .withValues(alpha: 0.3),
                                    borderRadius: BorderRadius.circular(200.r)),
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '3',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .apply(color: AppColors.primary),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Tab(text: AppText.notificationsTab2),
                          Tab(text: AppText.notificationsTab3),
                          Tab(
                            text: AppText.notificationsTab4,
                          ),
                        ]),
                  )
                ];
              },
              body: TabBarView(children: [
                NotificationsBody(),
                NotificationsBody(),
                NotificationsBody(),
                NotificationsBody()
              ]))),
    );
  }
}
