import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

class KLoginHeader extends StatelessWidget {
  const KLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(KImages.appLogo,),
          Row(
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 47,),
                  Text(KTexts.loginTitle, style: GoogleFonts.plusJakartaSans(fontSize: 24, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 8,),
                  Text(KTexts.simpleConfirmationLogin, style: GoogleFonts.plusJakartaSans(fontSize: 14),),
                  const SizedBox(height: 16,),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}