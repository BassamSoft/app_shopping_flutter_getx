import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/product_model.dart';
import 'package:flutter_application_5/view/widget/productDetails/add_cart.dart';
import 'package:flutter_application_5/view/widget/productDetails/clothes_info.dart';
import 'package:flutter_application_5/view/widget/productDetails/image_sliders.dart';
import 'package:flutter_application_5/view/widget/productDetails/size_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModels productModels;
  const ProductDetailsScreen({required this.productModels, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSliders(
                imageUrl: productModels.image,
              ),
              ClothesInfo(
                title: productModels.title,
                productId: productModels.id,
                rate: productModels.rating.rate,
                description: productModels.description,
              ),
              const SizeList(),
              AddCart(
                price: productModels.price,
                productModels: productModels,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
