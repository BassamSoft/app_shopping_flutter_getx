import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/logic/controller/cart_Controller.dart';
import 'package:flutter_application_5/logic/controller/theme_controller.dart';
import 'package:flutter_application_5/models/navModel.dart';
import 'package:flutter_application_5/routes/routes.dart';
import 'package:flutter_application_5/view/widget/home/bottomNavbar.dart';
import 'package:get/get.dart';
import 'package:flutter_application_5/logic/controller/main_controller.dart';
import 'package:flutter_application_5/utils/theme.dart';

class MainScreen extends StatelessWidget {
  final controller = Get.find<MainController>();
  final cartcontroller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Obx(() {
      return Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          leading: Container(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: IconButton(
                onPressed: () {
                  ThemeController().changesTheme();
                },
                icon: Icon(Icons.dark_mode),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Badge(
                  position: BadgePosition.topEnd(top: 0, end: 3),
                  animationDuration: const Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Text(
                    cartcontroller.quantity().toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.cartSceen);
                    },
                    icon: Image.asset('assets/images/shop.png'),
                  ),
                ),
              ),
            ),
          ],
          title: Text(
            "BassamSoft",
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
          centerTitle: true,
        ),
        bottomNavigationBar: _buildBottomBar(),

        body: IndexedStack(
          index: controller.currentIndex.value,
          
          children:controller.tabs,
        ),
      );
    }));
  }

Widget _buildBottomBar(){
    return Obx((){

      return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor:Get.isDarkMode ? darkGreyClr :Colors.white ,
      selectedIndex:controller.currentIndex.value,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) {
        controller.currentIndex.value=index;
      } ,
      
      
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('الرئيسيه'),
          activeColor:Get.isDarkMode ? languageSettings : mainColor,
          inactiveColor: Get.isDarkMode ? languageSettings : mainColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.category),
          title: Text('الاقسام'),
          activeColor: Get.isDarkMode ? languageSettings : mainColor,
          inactiveColor:Get.isDarkMode ? languageSettings : mainColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.favorite),
          title: Text(
            'المفضله ',
          ),
          activeColor: Get.isDarkMode ? languageSettings : mainColor,
          inactiveColor: Get.isDarkMode ? languageSettings : mainColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('الاعدادات'),
          activeColor: Get.isDarkMode ? languageSettings : mainColor,
          inactiveColor: Get.isDarkMode ? languageSettings : mainColor,
          textAlign: TextAlign.center,
        ),
      ],
    );

    });
    
    }
}




// BottomNavigationBar(
//           backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
//           currentIndex: controller.currentIndex.value,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               activeIcon: FaIcon(FontAwesomeIcons.home,
//                 color: Get.isDarkMode ? languageSettings : mainColor,
//               ),
//               icon: Icon(
//                 Icons.home,
//                 color: Get.isDarkMode ? Colors.white : Colors.black,
//               ),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: FaIcon(FontAwesomeIcons.table,
//                 color: Get.isDarkMode ? languageSettings : mainColor,
//               ),
//               icon: Icon(
//                 Icons.category,
//                 color: Get.isDarkMode ? Colors.white : Colors.black,
//               ),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.favorite,
//                 color: Get.isDarkMode ? languageSettings : mainColor,
//               ),
//               icon: Icon(
//                 Icons.favorite,
//                 color: Get.isDarkMode ? Colors.white : Colors.black,
//               ),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.settings,
//                 color: Get.isDarkMode ? languageSettings : mainColor,
//               ),
//               icon: Icon(
//                 Icons.settings,
//                 color: Get.isDarkMode ? Colors.white : Colors.black,
//               ),
//               label: '',
//             ),
//           ],
//           onTap: (index) {
//             controller.currentIndex.value = index;
//           },
//         ),
