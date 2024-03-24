import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

class KStringForm extends StatelessWidget {
  const KStringForm({
    super.key, 
    required this.formName,
  });

  final String formName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: formName,
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
    );
  }
}