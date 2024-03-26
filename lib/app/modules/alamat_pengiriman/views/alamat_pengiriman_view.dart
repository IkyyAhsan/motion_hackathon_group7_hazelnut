import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/alamat_pengiriman_controller.dart';

class AlamatPengirimanView extends GetView<AlamatPengirimanController> {
  const AlamatPengirimanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alamat Pengiriman'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    width: double.infinity,
                    height: 188,
                    decoration: BoxDecoration(color: Color(0xFFFFFCEA)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kost",
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),
                              SizedBox(
                                width: 268,
                              ),
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset("assets/logos/Checkbox.png"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text("Kenyangers",
                                  style: GoogleFonts.plusJakartaSans(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)))
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Kost Rajawali Futsal, Jalan Sukabirus, RT.8/RW.8,\n Citeureup, Dayeuhkolot, BANDUNG",
                                  style: GoogleFonts.plusJakartaSans(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)))
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: double.infinity,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0XFFB0B0B0))),
                            child: Center(
                                child: Text("Edit Alamat",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFB0B0B0))))),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 188,
                    decoration: BoxDecoration(color: Color(0xFFFFFCEA)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kampus",
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),
                              SizedBox(
                                width: 268,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text("Telkom University Bandung",
                                  style: GoogleFonts.plusJakartaSans(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)))
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Jl. Telekomunikasi Terusan Buah Batu, BANDUNG",
                                  style: GoogleFonts.plusJakartaSans(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)))
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: double.infinity,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0XFFB0B0B0))),
                            child: Center(
                                child: Text("Edit Alamat",
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFB0B0B0))))),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 256,
                  ),
                  Container(
                    width: double.infinity,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFE246),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xFFFFE246))),
                    child: Center(
                        child: Text("Tambah Alamat",
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)))),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
