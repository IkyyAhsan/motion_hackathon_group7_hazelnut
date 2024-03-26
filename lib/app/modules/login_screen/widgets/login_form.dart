import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/controllers/login_screen_controller.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/register_screen/controllers/register_screen_controller.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:get_storage/get_storage.dart';

class KLoginForm extends StatelessWidget {
  const KLoginForm({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginScreenController());
    final registerController = Get.put(RegisterScreenController());
    return Column(
      children: [
    
        // Username
        TextFormField(
          controller: controller.username,
          validator: (value) {
            if (value == null || value.isEmpty){
              return 'Username tidak boleh kosong';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: KTexts.usernameText,
            labelStyle: GoogleFonts.plusJakartaSans(fontSize: 16, color: KColors.labelTextColor),
            fillColor: KColors.formColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: KColors.primaryColor)
            ),
          ),
        ),
        const SizedBox(height: 16,),
    
        // Password
        TextFormField(
          controller: controller.password,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value){
            if (value == null || value.isEmpty){
              return 'ⓘ Oops, password kamu salah';
            } else if (value.length < 6){
              return 'Password terdiri dari minimal 6 karakter';
            }
            return null;
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: KTexts.passwordText,
            labelStyle: GoogleFonts.plusJakartaSans(fontSize: 16, color: KColors.labelTextColor),
            fillColor: KColors.formColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: KColors.primaryColor)
            ),
            suffixIcon: IconButton(
              onPressed: (){}, 
              icon: const Icon(FluentIcons.eye_off_20_regular),
            ),
          ),
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14
          ),
        )
      ],
    );
  }
}