// import 'package:flutter/material.dart';
// import 'package:flutter_application_5/logic/controller/auth_controller.dart';
// import 'package:flutter_application_5/logic/controller/settings_controller.dart';
// import 'package:get/get.dart';

// import '../text_utils.dart';


// class ProfileWidget extends StatelessWidget {
//   ProfileWidget({Key? key}) : super(key: key);

//   final controller = Get.find<SettingController>();
//   final authController = Get.find<AuthController>();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Obx(
//           () => Row(
//             children: [
//               Container(
//                 height: 100,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: NetworkImage(
//                       authController.displayUserPhoto.value,
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextUtils(
//                     fontfamily: 'Droid',
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     text: controller
//                         .capitalize(authController.displayUserName.value),
//                     color: Get.isDarkMode ? Colors.white : Colors.black,
//                     underLine: TextDecoration.none,
//                   ),
//                   TextUtils(
//                     fontfamily: 'Droid',

//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     text: authController.displayUserEmail.value,
//                     color: Get.isDarkMode ? Colors.white : Colors.black,
//                     underLine: TextDecoration.none,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
