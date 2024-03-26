import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/dont_have_account.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/login_form_divider.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/register_screen/views/widgets/register_button.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/register_screen/views/widgets/register_form.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/continue_with_google.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/form_header.dart';
import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  const RegisterScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 94, left: 16, bottom: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                const KFormHeader(headerTitle: KTexts.registerTitle, headerDesc: KTexts.registerDesc,),
      
                // Form
                const KRegisterForm(),
      
                // Register Button
                KRegisterButton(onPressed: () {
                    if (controller.registerFormKey.currentState!.validate()){
                      Get.toNamed(Routes.HOME);
                    }
                }),
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
      ),
    );
  }
}
