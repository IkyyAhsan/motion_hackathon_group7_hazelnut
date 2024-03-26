import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/alamat_pengiriman/views/alamat_pengiriman_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/metode_pembayaran/views/metode_pembayaran_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import '../controllers/profile_screen_controller.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profil",
          style: GoogleFonts.plusJakartaSans(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  height: 87,
                  decoration: BoxDecoration(
                      color: KColors.profileContainer,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(48),
                              child: SizedBox(
                                  width: 52,
                                  height: 52,
                                  child:
                                      Image(image: AssetImage(KImages.miaw))),
                            ),
                            Text(
                              KTexts.profileNameandNumber,
                              maxLines: 2,
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Image.asset(KImages.editLogo)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  height: 301,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: KColors.profileContainer),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(KImages.paymentLogo)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Metode Pembayaran",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 137,
                            ),
                            GestureDetector(
                              onTap: () => Get.to(MetodePembayaranView()),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child:
                                    Image.asset('assets/logos/alertbadge.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Notifikasi",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 217,
                            ),
                            GestureDetector(
                              onTap: () => Get.to(NotifikasiView()),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(KImages.staroutLogo)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Beri Penilaian",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 187,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 24,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(KImages.chatHelpLogo)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Pusat Bantuan",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 24,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(KImages.locationLogo)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Lokasi dan Alamat Pengiriman",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            GestureDetector(
                              onTap: () => Get.to(AlamatPengirimanView()),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(KImages.docpyLogo)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Ketentuan dan Privasi",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 24,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
