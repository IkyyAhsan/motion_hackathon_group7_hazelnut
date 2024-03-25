import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

class KStatusHaveAccount extends StatelessWidget {
  const KStatusHaveAccount({
    super.key, required this.status,
  });

final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(status, style: GoogleFonts.plusJakartaSans(color: KColors.statusHaveAccount, fontSize: 14),),
        TextButton(onPressed: () => Get.toNamed(Routes.REGISTER_SCREEN), child: Text(KTexts.registerHere, style: GoogleFonts.plusJakartaSans(color: KColors.primaryColor, fontSize: 14),),),
      ],
    );
  }
}