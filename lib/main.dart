import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'features/authentication/screen/login/login.dart';
import 'utlis/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              // final isRTL = LocalizationService.currentLocale.value.languageCode == "ar";
              return Directionality(
                // textDirection: isRTL ? TextDi
                //rection.rtl : TextDirection.ltr,
                textDirection: TextDirection.rtl,
                child: child!,
              );
            },
            theme: AppTheme.getTheme('ar'),
            home: const LoginScreen(),
          );
        });
  }
}
