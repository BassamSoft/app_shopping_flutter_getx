import 'package:flutter/material.dart';
import 'package:flutter_application_5/utils/theme.dart';
import 'package:flutter_application_5/view/widget/setting/dark_mode_widget.dart';
import 'package:flutter_application_5/view/widget/setting/language_widget.dart';
import 'package:flutter_application_5/view/widget/setting/logout_widget.dart';
import 'package:flutter_application_5/view/widget/setting/profile_widget.dart';
import 'package:flutter_application_5/view/widget/text_utils.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // ProfileWidget(),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          TextUtils(
                      fontfamily: 'Droid',

            fontSize: 18,
            fontWeight: FontWeight.bold,
            text: "GENERAL".tr,
            color: Get.isDarkMode ? pinkClr : mainColor,
            underLine: TextDecoration.none,
          ),
          const SizedBox(
            height: 20,
          ),
          DarkModeWidget(),
          const SizedBox(
            height: 20,
          ),
          LanguageWidget(),
          const SizedBox(
            height: 20,
          ),
          // LogOutWidget(),
        ],
      ),
    );
  }
}
