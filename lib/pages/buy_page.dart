import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controllers.dart';
import '../widgets/app_bar_widget.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenWidth, screenHeight * 0.1),
          child: AppBarWidget()),
      body: Center(
          child: Text(
        'Producto comprado',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
