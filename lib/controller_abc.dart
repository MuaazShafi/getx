import 'package:get/get.dart';

class ABC extends GetxController {
  Rx<int> abcd = 0.obs;
  Rx<bool> ss = true.obs;

  counter() {
    abcd.value++;
  }
}
