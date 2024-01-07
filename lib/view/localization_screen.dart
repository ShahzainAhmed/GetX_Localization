import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm_mvc/resources/colors/app_colors.dart';
import 'package:getx_mvvm_mvc/resources/styles/app_typography.dart';

class LanguageLocalization extends StatefulWidget {
  const LanguageLocalization({super.key});

  @override
  State<LanguageLocalization> createState() => _LanguageLocalizationState();
}

class _LanguageLocalizationState extends State<LanguageLocalization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Language Localization',
          style: AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
        ),
        backgroundColor: AppColors.kGreyColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'email_hint'.tr,
            style: AppTypography.kBold22,
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: Text(
                  "English",
                  style: AppTypography.kBold18,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ur', 'PK'));
                },
                child: Text("Urdu", style: AppTypography.kBold18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
