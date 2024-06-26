import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreenController extends GetxController {
  
  // Variables
  final fullname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final registerFormKey = GlobalKey<FormState>();
  
  void clearForm(){
    fullname.clear();
    username.clear();
    password.clear();
    confirmPassword.clear();
  }
}

