// import 'package:flutter/material.dart';
// import 'package:flutter_application_5/logic/controller/auth_controller.dart';
// import 'package:flutter_application_5/routes/routes.dart';
// import 'package:flutter_application_5/utils/my_string.dart';
// import 'package:flutter_application_5/utils/theme.dart';
// import 'package:flutter_application_5/view/widget/auth/auth_button.dart';
// import 'package:flutter_application_5/view/widget/auth/auth_text_from_field.dart';
// import 'package:flutter_application_5/view/widget/auth/container_under.dart';
// import 'package:flutter_application_5/view/widget/text_utils.dart';
// import 'package:get/get.dart';


// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key}) : super(key: key);

//   final fromKey = GlobalKey<FormState>();

//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   final controller = Get.find<AuthController>();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: context.theme.backgroundColor,
//         appBar: AppBar(
//           backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
//           elevation: 0,
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 height: MediaQuery.of(context).size.height / 1.3,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
//                   child: Form(
//                     key: fromKey,
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             TextUtils(
//                               fontfamily: 'Droid',

//                               fontSize: 28,
//                               fontWeight: FontWeight.w500,
//                               text: "تسحيل ",
//                               color: Get.isDarkMode ? pinkClr : mainColor,
//                               underLine: TextDecoration.none,
//                             ),
//                             const SizedBox(
//                               width: 3,
//                             ),
//                             TextUtils(
//                               fontfamily: 'Droid',

//                               fontSize: 28,
//                               fontWeight: FontWeight.w500,
//                               text: "الدخول",
//                               color:
//                                   Get.isDarkMode ? Colors.white : Colors.black,
//                               underLine: TextDecoration.none,
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 50,
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         AuthTextFromField(
//                           controller: emailController,
//                           obscureText: false,
//                           validator: (value) {
//                             if (!RegExp(validationEmail).hasMatch(value)) {
//                               return 'Invalid email';
//                             } else {
//                               return null;
//                             }
//                           },
//                           prefixIcon: Get.isDarkMode
//                               ? const Icon(
//                                   Icons.email,
//                                   color: pinkClr,
//                                   size: 30,
//                                 )
//                               : Image.asset('assets/images/email.png'),
//                           suffixIcon: const Text(""),
//                           hintText: 'البريد الالكتروني',
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         GetBuilder<AuthController>(
//                           builder: (_) {
//                             return AuthTextFromField(
//                               controller: passwordController,
//                               obscureText:
//                                   controller.isVisibilty ? false : true,
//                               validator: (value) {
//                                 if (value.toString().length < 6) {
//                                   return 'Password should be longer or equal to 6 characters';
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               prefixIcon: Get.isDarkMode
//                                   ? const Icon(
//                                       Icons.lock,
//                                       color: pinkClr,
//                                       size: 30,
//                                     )
//                                   : Image.asset('assets/images/lock.png'),
//                               hintText: 'كلمه السر',
//                               suffixIcon: IconButton(
//                                 onPressed: () {
//                                   controller.visibility();
//                                 },
//                                 icon: controller.isVisibilty
//                                     ? const Icon(
//                                         Icons.visibility_off,
//                                         color: Colors.black,
//                                       )
//                                     : const Icon(
//                                         Icons.visibility,
//                                         color: Colors.black,
//                                       ),
//                               ),
//                             );
//                           },
//                         ),
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: TextButton(
//                             onPressed: () {
//                               Get.toNamed(Routes.forgotPasswordScreen);
//                             },
//                             child: TextUtils(
//                               fontfamily: 'Droid',

//                               text: 'نسيت كلمه المرور?',
//                               fontSize: 14,
//                               color:
//                                   Get.isDarkMode ? Colors.white : Colors.black,
//                               underLine: TextDecoration.none,
//                               fontWeight: FontWeight.normal,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 50,
//                         ),
//                         GetBuilder<AuthController>(builder: (_) {
//                           return AuthButton(
//                             onPressed: () {
//                               if (fromKey.currentState!.validate()) {
//                                 String email = emailController.text.trim();
//                                 String password = passwordController.text;

//                                 controller.logInUsingFirebase(
//                                     email: email, password: password);
//                               }
//                             },
//                             text: "دخول",
//                           );
//                         }),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextUtils(
//                               fontfamily: 'Droid',

//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           text: "او",
//                           color: Get.isDarkMode ? Colors.white : Colors.black,
//                           underLine: TextDecoration.none,
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             InkWell(
//                               onTap: () {
//                               //  controller.faceBookSignUpApp();
//                               },
//                               child: Image.asset(
//                                 "assets/images/facebook.png",
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             GetBuilder<AuthController>(builder: (_) {
//                               return InkWell(
//                                 onTap: () {
//                                   controller.googleSinUpApp();
//                                 },
//                                 child: Image.asset(
//                                   "assets/images/google.png",
//                                 ),
//                               );
//                             }),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               ContainerUnder(
//                 text: "لااملك اي حساب ؟ ",
//                 textType: "اشتراك",
//                 onPressed: () {
//                   Get.offNamed(Routes.signUpScreen);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
