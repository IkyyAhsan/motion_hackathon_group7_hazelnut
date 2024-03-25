import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';

class KFormHeader extends StatelessWidget {
  const KFormHeader({
    super.key, 
    required this.headerTitle, 
    required this.headerDesc,
  });

  final String headerTitle;
  final String headerDesc;

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
                  Text(headerTitle, style: GoogleFonts.plusJakartaSans(fontSize: 24, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 8,),
                  Text(headerDesc, style: GoogleFonts.plusJakartaSans(fontSize: 14),),
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