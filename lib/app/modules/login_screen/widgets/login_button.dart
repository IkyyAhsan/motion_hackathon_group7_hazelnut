import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

class KLoginButton extends StatelessWidget {
  const KLoginButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ButtonStyle(shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ), backgroundColor: MaterialStateProperty.all(KColors.primaryColor)),
        child: Text('Masuk', style: GoogleFonts.plusJakartaSans(color: Colors.white, fontSize: 18),),
        ),
    );
  }
}