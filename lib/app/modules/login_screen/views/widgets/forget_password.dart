import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

class KForgetPassword extends StatelessWidget {
  const KForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: (){}, 
        child: Text(KTexts.forgetPasswordTitle, style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontWeight: FontWeight.w600),),),
        ),
      ],
    );
  }
}