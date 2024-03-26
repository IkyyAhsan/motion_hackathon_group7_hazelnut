import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/metode_pembayaran_controller.dart';

class MetodePembayaranView extends GetView<MetodePembayaranController> {
  const MetodePembayaranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Metode Pembayaran'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                SizedBox(
                  height: 27,
                ),
                Row(
                  children: [
                    Text(
                      "E-Wallet",
                      style: GoogleFonts.plusJakartaSans(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFCEA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset("assets/logos/gopay.png")),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Gopay",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              width: 216,
                            ),
                            SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset("assets/logos/Checkbox.png"))
                          ],
                        ),
                        Row(
                          children: [Text("Cashback GoPay coin s.d Rp 50.000")],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFCEA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset("assets/logos/shopee.png")),
                            SizedBox(
                              width: 7,
                            ),
                            Text("Shopeepay",
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        Row(
                          children: [Text("Cashback 3,000 koin Shopee")],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFCEA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset("assets/logos/dana.png")),
                            SizedBox(
                              width: 7,
                            ),
                            Text("DANA",
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Cashback 20% untuk merchant terpilih")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFCEA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset("assets/logos/ovo.png")),
                            SizedBox(
                              width: 7,
                            ),
                            Text("OVO",
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        Row(
                          children: [Text("")],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Text(
                      "Kartu Debit",
                      style: GoogleFonts.plusJakartaSans(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  width: 340,
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/logos/Payment.png"),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Gunakan Kartu Debit",
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFCEA),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ),
        )));
  }
}
