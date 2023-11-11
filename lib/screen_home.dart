import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller_abc.dart';

class ScreenHome extends StatelessWidget {
  ABC controller = Get.put(ABC());

  @override
  Widget build(BuildContext context) {
    print("222");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              print("111");
              return Text("${controller.abcd}");
            }),
            ElevatedButton(
              onPressed: () {
                controller.counter();
              },
              child: Text("Press"),
            ),
            Obx(() {
              print("333");
              return Switch(
                  value: controller.ss.value,
                  onChanged: (aa) {
                    controller.ss.value = aa;
                  });
            })
          ],
        ),
      ),
    );
  }
}
