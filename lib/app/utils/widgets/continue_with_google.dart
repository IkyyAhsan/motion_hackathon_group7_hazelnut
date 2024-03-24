import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

class KContinueWithGoogle extends StatelessWidget {
  const KContinueWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: (){}, 
        style: ButtonStyle(shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ), backgroundColor: MaterialStateProperty.all(Colors.white)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage(KImages.googleLogo), height: 20,),
            const SizedBox(width: 16,),
            Text(KTexts.continueWithGoogle, style: GoogleFonts.plusJakartaSans(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
          ],
        )
        ),
    );
  }
}