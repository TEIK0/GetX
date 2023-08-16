import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/pages.dart';

import '../controller/controllers.dart';
import '../widgets/app_bar_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    snackBar({title, message, color}) {
      Get.snackbar(title, message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: color,
          colorText: Colors.white);
    }

    dialog() {
      Get.dialog(AlertDialog(
        title: Text('Producto excedido'),
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back),
          )
        ],
      ));
    }

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenWidth, screenHeight * 0.1),
          child: AppBarWidget()),
      body: Center(
          child: Container(
        width: screenWidth * 0.4,
        height: screenHeight * 0.8,
        color: Colors.white,
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Get.to(DescriptionPage());
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize:
                            Size(screenWidth * 0.12, screenHeight * 0.1)),
                    child: const Text(
                      'Detalles',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Get.off(BuyPage());
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 218, 198, 15),
                        minimumSize:
                            Size(screenWidth * 0.12, screenHeight * 0.1)),
                    child: const Text(
                      'Comprar',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Get.offAll(PayPage());
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize:
                            Size(screenWidth * 0.12, screenHeight * 0.1)),
                    child: const Text(
                      'Pagar',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                const Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.10,
          ),
          Container(
            width: screenWidth * 0.25,
            height: screenHeight * 0.30,
            child: const Image(
                image: AssetImage('assets/cup_of_coffe.png'), fit: BoxFit.fill),
          ),
          SizedBox(
            height: screenHeight * 0.10,
          ),
          Expanded(
            child: Row(
              children: [
                IconButton(
                  iconSize: 60,
                  onPressed: () {
                    productController.minus();
                  },
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.red,
                  ),
                ),
                const Spacer(),
                IconButton(
                  iconSize: 60,
                  onPressed: () {
                    productController.plus();
                  },
                  icon: const Icon(
                    Icons.add_circle,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
