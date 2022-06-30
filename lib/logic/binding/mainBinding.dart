import 'package:flutter_application_5/logic/controller/settings_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_5/logic/controller/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put( SettingController());


  }


}