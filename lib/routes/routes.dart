import 'package:flutter_application_5/logic/binding/auth_biniding.dart';
import 'package:flutter_application_5/logic/binding/product_binding.dart';
import 'package:flutter_application_5/view/screen/auth/forgot_password_screen.dart';
import 'package:flutter_application_5/view/screen/auth/login_screen.dart';
import 'package:flutter_application_5/view/screen/auth/signup_screen.dart';
import 'package:flutter_application_5/view/screen/cart_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_application_5/logic/binding/mainBinding.dart';
import 'package:flutter_application_5/view/screen/mainScreen.dart';
import 'package:flutter_application_5/view/screen/wrapperScreen.dart';

class AppRoutes {
//intitial Routes
static const Wrapper=Routes.main;
static const mainScreen=Routes.main;

  //getpage
  static final routes = [
     
    GetPage(
      name: Routes.wrapperScreen,
      page: () => const WrapperScreen(),
    ),
    //     GetPage(
    //   name: Routes.loginScreen,
    //   page: () => LoginScreen(),
    //   binding: AuthBinding(),
    // ),
   
    // GetPage(
    //   name: Routes.signUpScreen,
    //   page: () => SignUpScreen(),
    //   binding: AuthBinding(),
    // ),
    // GetPage(
    //   name: Routes.forgotPasswordScreen,
    //   page: () => ForgotPasswordScreen(),
    //   binding: AuthBinding(),
    // ),
    GetPage(
      name: Routes.main,
     page: () => MainScreen(),
      bindings: [
      
        MainBinding(),
        ProductBinding(),
      ],
     ),
        GetPage(
      name: Routes.cartSceen,
     page: () => CartScreen(),
      bindings: [
        MainBinding(),
       
      ],
     ),
        GetPage(
      name: Routes.cartSceen,
     page: () => CartScreen(),
      bindings: [
        MainBinding(),
       ProductBinding()
      ],
     )
  ];
}

class Routes {
  static const wrapperScreen = '/welcomeScreen';
  static const main = '/mainScreen';
  static const cartSceen = '/cartScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';

}
