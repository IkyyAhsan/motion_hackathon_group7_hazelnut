import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 94, left: 24, bottom: 24, right: 24),
        child: Center(
          child: Column(
            children: [Image.asset('assets/logos/kenyangin_logo.png')],
          ),
        ),
      ),
    ));
  }
}
