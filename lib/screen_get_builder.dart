import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller_xyz.dart';
import 'package:getx/screen_new_page.dart';

class ScreenGetBuilder extends StatelessWidget {
  XYZ controller = Get.put(XYZ());

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<XYZ>(
              builder: (controller) {
                print("123");
                return Text("${controller.count}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.incre();
              },
              child: Text("press"),
            ),
            GetBuilder<XYZ>(
              builder: (controller) {
                return Switch(
                  value: controller.switchValue,
                  onChanged: (a) {
                    controller.switchMethod(a);
                  },
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ScreenNewPage());
              },
              child: Text("Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}
