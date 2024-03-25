import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 229,
            height: 147,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.asset('assets/logos/wargot.png')),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.01),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)),
              ],
            ),
            width: 229,
            height: 85,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Wargot',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      Image.asset('assets/logos/Star.png'),
                      Text(
                        '5.0',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '1 km',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image(image: AssetImage(KImages.blangImages)),
                      ),
                      Text(
                        '12 menit',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
