import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

class KStatusHaveAccount extends StatelessWidget {
  const KStatusHaveAccount({
    super.key, required this.status, required this.loginOrRegister, required this.onPressed,
  });

final String status;
final String loginOrRegister;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(status, style: GoogleFonts.plusJakartaSans(color: KColors.statusHaveAccount, fontSize: 14),),
        TextButton(onPressed: onPressed, child: Text(loginOrRegister, style: GoogleFonts.plusJakartaSans(color: KColors.primaryColor, fontSize: 14),),),
      ],
    );
  }
}