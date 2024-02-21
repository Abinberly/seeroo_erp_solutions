import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/bottom_nav/bottom_nav.dart';
 

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() {
    // Perform login logic here
    String email = emailController.text;
    String password = passwordController.text;

    // For demonstration purposes, let's just print the credentials
    print("Email: $email");
    print("Password: $password");

    // After successful login, navigate to another screen
    Get.to(BottomSheetPage());
  }
}
