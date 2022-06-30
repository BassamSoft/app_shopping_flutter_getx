import 'package:flutter/material.dart';
import 'package:flutter_application_5/logic/controller/cart_Controller.dart';
import 'package:flutter_application_5/utils/theme.dart';
import 'package:flutter_application_5/view/widget/cart/cartTotal.dart';
import 'package:flutter_application_5/view/widget/cart/cart_product_card.dart';
import 'package:flutter_application_5/view/widget/cart/empty_cart.dart';
// import 'package:flutter_application_5/view/widget/cart/empty_cart.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final controller = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          appBar: AppBar(
            backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
            title: const Text('سلة التسوق'),
            elevation: 0,
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    controller.clearAllProducts();
                  },
                  icon: Icon(Icons.backspace))
            ],
          ),
          body: Obx(() {
            if (controller.productsMap.isEmpty) {
              return const EmptyCart();
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 600,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return CartProductCard(
                              index: index,
                              productmodel:
                                  controller.productsMap.keys.toList()[index],
                              quanty:
                                  controller.productsMap.values.toList()[index],
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 20,
                              ),
                          itemCount: controller.productsMap.length),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CartTotal(),
                    ),
                  ],
                ),
              );
            }
          })),
    );
  }
}
