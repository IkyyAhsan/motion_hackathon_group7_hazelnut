import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

class search_result extends StatelessWidget {
  const search_result({
    super.key, 
    required this.text, required this.width,
  });

  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: width,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: KColors.dividerGrey,
        borderRadius: BorderRadius.circular(96),
      ),
      child: Text(text, style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 12)),),
    );
  }
}
