import 'package:flutter_application_5/logic/controller/cart_Controller.dart';
import 'package:flutter_application_5/logic/controller/category_controller.dart';
import 'package:flutter_application_5/logic/controller/product_controller.dart';
import 'package:get/instance_manager.dart';


class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
  }
}
