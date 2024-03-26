import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/register_screen/controllers/register_screen_controller.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:get_storage/get_storage.dart';

class KRegisterForm extends StatelessWidget {
  const KRegisterForm({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    final registerController = Get.put(RegisterScreenController());
    return Column(
      children: [
    
        // Nama Lengkap
        TextFormField(
          controller: registerController.fullname,
          validator: (value) {
            if (value == null || value.isEmpty){
              return 'Nama lengkap tidak boleh kosong';
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: KTexts.fullNameText,
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
    
        // Username
        TextFormField(
          controller: registerController.username,
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
          controller: registerController.password,
          validator: (value){
            if (value == null || value.isEmpty){
              return 'Password tidak boleh kosong.';
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
        ),
        const SizedBox(height: 16,),
    
        // Confirm Password
        TextFormField(
          controller: registerController.confirmPassword,
          validator: (value){
            if (value == null || value.isEmpty){
              return 'Password tidak boleh kosong.';
            } else if (value.length < 6){
              return 'Password terdiri dari minimal 6 karakter';
            } else if (value != registerController.password.text){
              return 'Password tidak cocok';
            }
            return null;
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: KTexts.confirmPasswordText,
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
              icon: const Icon(FluentIcons.eye_off_20_regular, color: Colors.black,),
            ),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}