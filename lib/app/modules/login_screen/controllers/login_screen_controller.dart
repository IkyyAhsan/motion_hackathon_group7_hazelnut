import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  
  // Variables
  final username = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  void clearForm(){
    username.clear();
    password.clear();
  }
}
