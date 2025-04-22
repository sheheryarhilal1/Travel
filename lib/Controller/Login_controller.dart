import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email.isNotEmpty && password.isNotEmpty) {
      // Add real login logic
      Get.snackbar("Login", "Login successful!",
          snackPosition: SnackPosition.TOP);
    } else {
      Get.snackbar("Error", "Please fill all fields",
          snackPosition: SnackPosition.TOP);
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
