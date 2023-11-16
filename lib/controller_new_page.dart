import 'dart:async';
import 'dart:ui';

import 'package:get/get.dart';

class NewPage extends GetxController {
  Rx<Color> colorCode = Color(0xff000000).obs;

  void magic() async {
    int targetColorValue = (colorCode.value.value + 1000) % 0xFFFFFF;
    while (colorCode.value.value != targetColorValue) {
      await Future.delayed(Duration(seconds: 1));
      int currentColorValue = colorCode.value.value;
      int newColorValue = (currentColorValue + 1000) % 0xFFFFFFFF;
      colorCode.value = Color(newColorValue);
      print(colorCode.value);
    }
  }

  @override
  void onInit() {
    print("Magic start");
    magic();
    super.onInit();
  }

  @override
  void onClose() {
    print("BYE");
    dispose();
    super.onClose();
  }
}
