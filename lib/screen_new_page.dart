import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller_new_page.dart';
import 'package:getx/screen_video_player.dart';

class ScreenNewPage extends StatelessWidget {
  NewPage controller = Get.put(NewPage());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: controller.colorCode.value,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(() => ScreenVideoPlayer());
                },
                child: Text("Video Player Screen"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
