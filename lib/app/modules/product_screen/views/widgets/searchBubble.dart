import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

class searchBubble extends StatelessWidget {
  final String namaResto;
  const searchBubble({
    required this.namaResto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 12, 16),
      child: Container(
        width: 80,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(96),
          color: KColors.dividerGrey,
        ),
        child: Center(
          child: Text(
            namaResto,
            style: GoogleFonts.plusJakartaSans(
                textStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
