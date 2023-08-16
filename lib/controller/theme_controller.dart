import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool _isThemeDark = false.obs;

  bool get isThemeDark => _isThemeDark.value;

  void changeTheme() {
    if (_isThemeDark.value) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }

    _isThemeDark.value = !_isThemeDark.value;
  }
}
