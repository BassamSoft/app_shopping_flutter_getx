import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/navigtionitems.dart';
import 'package:get/get.dart';
import 'package:flutter_application_5/view/screen/category.dart';
import 'package:flutter_application_5/view/screen/faveorite.dart';
import 'package:flutter_application_5/view/screen/homeScreen.dart';
import 'package:flutter_application_5/view/screen/setting.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Asroo Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
