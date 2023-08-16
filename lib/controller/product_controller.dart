import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/controllers.dart';

import '../widgets/botton_sheets_list_widget.dart';

class ProductController extends GetxController {
  int _countProduct = 0;
  int get countProduct => _countProduct;

  void plus() {
    showDialogScreen('Producto Agregado');
    showSnackBar('Producto Agregado', 'se agrego un producto', Colors.green);
    _countProduct++;
    update();
  }

  void minus() {
    showDialogScreen('Producto Eliminado');
    showSnackBar('Producto Eliminado', 'se elimino un producto', Colors.red);
    _countProduct--;
    update();
  }

  void showSnackBar(String title, String message, Color color) {
    Get.snackbar(title, message,
        backgroundColor: color,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM);
  }

  void showBottonSheet() {
    Get.bottomSheet(GetBuilder(
      init: ThemeController(),
      builder: (_) => Container(
        color: Colors.black38,
        child: Wrap(children: [
          BottomSheetListWidget(
              title: 'contador',
              subtitle: countProduct.toString(),
              icon: Icons.dashboard),
          BottomSheetListWidget(
              title: 'Tema Actual',
              subtitle: _.isThemeDark ? 'Claro' : 'Oscuro',
              icon: Icons.sunny),
          BottomSheetListWidget(
              title: 'Ruta Actual',
              subtitle: Get.currentRoute,
              icon: Icons.roundabout_right_outlined),
        ]),
      ),
    ));
  }

  void showDialogScreen(String accion) {
    Get.dialog(Container(
      child: AlertDialog(
        title: Text(accion),
        actions: [
          TextButton(
              onPressed: () {
                Get.back();
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, minimumSize: Size(50, 50)),
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
        ],
      ),
    ));
  }
}
