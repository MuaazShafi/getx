import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screen_get_builder.dart';
import 'package:getx/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: ScreenGetBuilder(),
    );
  }
}
