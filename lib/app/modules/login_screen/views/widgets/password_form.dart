import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

class KPasswordForm extends StatelessWidget {
  const KPasswordForm({
    super.key, required this.formName,
  });

  final String formName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: formName,
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
    );
  }
}

