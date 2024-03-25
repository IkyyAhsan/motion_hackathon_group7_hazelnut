import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

class KFromDivider extends StatelessWidget {
  const KFromDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider(thickness: 2, endIndent: 20, color: KColors.dividerGrey,)),
        Text(KTexts.orText, style: GoogleFonts.plusJakartaSans(fontSize: 16, color: KColors.darkGrey),),
        const Expanded(child: Divider(thickness: 2, indent: 20, endIndent: 0, color: KColors.dividerGrey,)),
      ],
    );
  }
}