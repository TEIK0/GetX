import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/widgets/shoping_card_widget.dart';

import '../controller/controllers.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return AppBar(
      title: const Text('Cart Product'),
      actions: [
        ShopingCartWidget(),
        GetBuilder<ThemeController>(
            init: ThemeController(),
            builder: (_) => Obx(
                  () => Switch(
                      activeColor: Colors.black,
                      inactiveThumbColor: Colors.green,
                      value: _.isThemeDark,
                      onChanged: (value) => _.changeTheme()),
                ))
      ],
    );
  }
}
