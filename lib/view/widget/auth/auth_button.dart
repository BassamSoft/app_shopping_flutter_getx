import 'package:flutter/material.dart';
import 'package:flutter_application_5/utils/theme.dart';
import 'package:get/get.dart';


import '../text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Get.isDarkMode ? pinkClr : mainColor,
        minimumSize: const Size(360, 50),
      ),
      child: TextUtils(
                              fontfamily: 'Droid',

        color: Colors.white,
        text: text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        underLine: TextDecoration.none,
      ),
    );
  }
}
