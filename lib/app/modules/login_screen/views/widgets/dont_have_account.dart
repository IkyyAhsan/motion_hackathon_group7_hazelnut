import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

class KDontHaveAccount extends StatelessWidget {
  const KDontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(KTexts.dontHaveAccount, style: GoogleFonts.plusJakartaSans(color: KColors.dontHaveAnAccount, fontSize: 14),),
        TextButton(onPressed: (){}, child: Text(KTexts.registerHere, style: GoogleFonts.plusJakartaSans(color: KColors.primaryColor, fontSize: 14),),),
      ],
    );
  }
}