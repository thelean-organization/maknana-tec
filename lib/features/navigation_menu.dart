import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maknana/features/Reports/reports_screen.dart';
import 'package:maknana/features/profile/profile.dart';
import 'package:maknana/features/technician_task/task_screen.dart';

import '../utlis/constants/colors.dart';
import '../utlis/constants/text.dart';
import 'invoices/invoices_screen.dart';
import 'notification/notifications_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40.h,
              width: 160.w,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[100]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5.w,
                    children: [
                      Text(
                        AppText.appbarText,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: AppColors.primary),
                      ),
                      Icon(
                        Icons.feedback_outlined,
                        color: AppColors.primary,
                        size: 20.r,
                      )
                    ],
                  )),
            ),
            IconButton(
              onPressed: () => controller.navigateToScreen(ProfileScreen()),
              icon: Icon(
                Icons.account_circle_outlined,
                color: AppColors.textButton,
                size: 30.r,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: AppColors.textSecondary,
              thickness: 1.0.w,
              height: 1.0.h,
            ),
            NavigationBar(
              height: 80.h,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.changePage(index),
              backgroundColor: AppColors.textButton,
              indicatorColor: Colors.transparent,
              destinations: [
                NavigationDestination(
                    icon: Icon(
                      Icons.list_outlined,
                      color: controller.getIconColor(0),
                      size: 24.r,
                    ),
                    label: AppText.homeName1),
                NavigationDestination(
                    icon: Icon(Icons.text_snippet_outlined,
                        color: controller.getIconColor(1), size: 24.r),
                    label: AppText.homeName2),
                NavigationDestination(
                    icon: Icon(
                      Icons.attach_money_sharp,
                      color: controller.getIconColor(2),
                      size: 24.r,
                    ),
                    label: AppText.homeName3),
                NavigationDestination(
                    icon: Icon(Icons.notifications_outlined,
                        color: controller.getIconColor(3), size: 24.r),
                    label: AppText.homeName4),
              ],
            ),
          ],
        ),
      ),
      body: Obx(() => controller.currentPage),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  var currentScreen = Rx<Widget>(const TaskScreen());

  final List<Widget> mainScreens = [
    TaskScreen(),
    ReportsScreen(),
    InvoicesScreen(),
    NotificationsScreen(),
  ];

  Widget get currentPage => currentScreen.value;

  void changePage(int index) {
    selectedIndex.value = index;
    currentScreen.value = mainScreens[index];
  }

  void navigateToScreen(Widget screen) {
    currentScreen.value = screen;
  }

  Color getIconColor(int index) {
    return selectedIndex.value == index ? Colors.red : Colors.black;
  }
}
