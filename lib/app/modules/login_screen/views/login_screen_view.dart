import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/dont_have_account.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/forget_password.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/login_form_divider.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/form_header.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/password_form.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/string_form.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/continue_with_google.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/main_button.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 94, left: 16, bottom: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Header
              KFormHeader(headerTitle: KTexts.loginTitle, headerDesc: KTexts.loginDesc,),

              // Username
              KStringForm(formName: KTexts.usernameText,),
              SizedBox(height: 16,),

              // Password
              KPasswordForm(formName: KTexts.passwordText,),
              SizedBox(height: 8,),

              // Lupa Password
              KForgetPassword(),
              SizedBox(height: 8,),

              // Login Button
              KMainButton(buttonName: KTexts.login,),
              SizedBox(height: 16,),

              // Dont Have Account Button
              KStatusHaveAccount(status: KTexts.dontHaveAccount),
              SizedBox(height: 20,),

              // Divider
              KFromDivider(),
              SizedBox(height: 20,),
              
              // Google Sign-in
              KContinueWithGoogle(),
            ],
          ),
          ),
      )
    );
  }
}



