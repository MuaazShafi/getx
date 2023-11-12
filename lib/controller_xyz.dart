import 'package:get/get.dart';

class XYZ extends GetxController {
  int count = 0;

  bool switchValue = false;

  incre() {
    count++;
    update();
  }

  switchMethod(value) {
    switchValue = value;
    update();
  }
}
