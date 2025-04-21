import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style/routs/app_routs%20.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
    );
  }
}
