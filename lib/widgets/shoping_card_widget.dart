import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controllers.dart';

class ShopingCartWidget extends StatelessWidget {
  const ShopingCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return Stack(
      children: [
        IconButton(
          onPressed: () {
            productController.showBottonSheet();
          },
          padding: const EdgeInsets.only(top: 10, right: 10),
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 30,
          ),
        ),
        Positioned(
            right: 10,
            top: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.red),
              constraints: const BoxConstraints(minHeight: 14, minWidth: 14),
              child: GetBuilder<ProductController>(
                  init: ProductController(),
                  builder: (_) => Text(
                        _.countProduct.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
            ))
      ],
    );
  }
}
