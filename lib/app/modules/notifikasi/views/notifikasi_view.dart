import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/notifikasi_controller.dart';

class NotifikasiView extends GetView<NotifikasiController> {
  const NotifikasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NotifikasiView'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset("assets/logos/alerton.png")),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            "Notifikasi penting",
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFB0B0B0))),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Notifikasi ini berisi status pemesanan, transaksi,\ndan info akun. Tidak dapat dinonaktifkan",
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFB0B0B0))),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset("assets/logos/megaphone.png")),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            "Notifikasi promo",
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3D3D3D))),
                          ),
                          SizedBox(
                            width: 135,
                          ),
                          SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset("assets/logos/turn.png"))
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Notifikasi ini berisi status pemesanan, transaksi,\ndan info akun. Tidak dapat dinonaktifkan",
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF3D3D3D))),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
