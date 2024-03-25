import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/dont_have_account.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/login_form_divider.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/password_form.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/widgets/string_form.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/continue_with_google.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/form_header.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/main_button.dart';
import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  const RegisterScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 94, left: 16, bottom: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const KFormHeader(headerTitle: KTexts.registerTitle, headerDesc: KTexts.registerDesc,),

              // Nama Lengkap
              const KStringForm(formName: KTexts.fullNameText),
              const SizedBox(height: 16,),

              // Nama Lengkap
              const KStringForm(formName: KTexts.usernameText),
              const SizedBox(height: 16,),

              // Password
              const KPasswordForm(formName: KTexts.passwordText,),
              const SizedBox(height: 16,),

              // Confirm Password
              const KPasswordForm(formName: KTexts.confirmPasswordText),
              const SizedBox(height: 20,),

              // Register Button
              KMainButton(buttonName: KTexts.register, onPressed: () => Get.toNamed(Routes.HOME),),
              const SizedBox(height: 16,),

              // Already Have Account Button
              KStatusHaveAccount(status: KTexts.alreadyHaveAccount, loginOrRegister: KTexts.login, onPressed: () => Get.toNamed(Routes.LOGIN_SCREEN),),
              const SizedBox(height: 20,),

              // Divider
              const KFromDivider(),
              const SizedBox(height: 20,),
              
              // Google Sign-in
              const KContinueWithGoogle(),
            ],
          ),
          ),
      )
    );
  }
}
