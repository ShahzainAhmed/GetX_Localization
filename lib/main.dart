import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm_mvc/resources/localization/languages.dart';
import 'package:getx_mvvm_mvc/resources/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Languages(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          title: 'Flutter Demo',
          theme: ThemeData(),
          getPages: AppRoutes.appRoutes(),
        );
      },
    );
  }
}
