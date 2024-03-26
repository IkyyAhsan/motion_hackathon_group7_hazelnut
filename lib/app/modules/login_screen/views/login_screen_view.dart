import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/dont_have_account.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/forget_password.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/login_form_divider.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/form_header.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/login_form.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/continue_with_google.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/widgets/login_button.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,

      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 94, left: 16, bottom: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // -- Header
                const KFormHeader(headerTitle: KTexts.loginTitle, headerDesc: KTexts.loginDesc,),
      
                // Form
                const KLoginForm(),
                const SizedBox(height: 8,),

                const KForgetPassword(),
                const SizedBox(height: 8,),
      
                // Login Button
                KLoginButton(onPressed: () {
                  if (controller.loginFormKey.currentState!.validate()){
                    String? storedUsername = GetStorage().read('username');
                    String? storedPassword = GetStorage().read('password');

                    if (controller.username.text == storedUsername && controller.password.text == storedPassword) {

                      Get.toNamed(Routes.NAVBAR);
                    } else {
                      Get.snackbar('Error', 'Username atau password salah.', backgroundColor: Colors.white, borderColor: KColors.primaryColor);
                    }
                  }
                },),
                const SizedBox(height: 16,),
      
                // Dont Have Account Button
                KStatusHaveAccount(status: KTexts.dontHaveAccount, loginOrRegister: KTexts.registerHere, onPressed: () => Get.toNamed(Routes.REGISTER_SCREEN),),
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



