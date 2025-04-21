import 'package:get/get.dart';
import 'dart:async';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _initSplash();
  }

  void _initSplash() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed('/home'); // Replace with your actual route
    });
  }
}
