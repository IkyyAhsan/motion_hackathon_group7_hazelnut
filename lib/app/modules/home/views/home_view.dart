import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: [
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Text(
                    "Halo, Rizal",
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Stack(children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(999),
                          child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset('assets/logos/notif.png')),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Mau makan apa hari ini?",
                      style: GoogleFonts.plusJakartaSans(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(
                      width: 64,
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 135.0,
                  onPageChanged: (index, reason) =>
                      controller.ChangeSliderIndex(index),
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/logos/BaseAds.png', // Ganti dengan path gambar Anda
                            fit:
                                BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              DotsIndicator(
                dotsCount: 5,
                position: controller.SliderIndex,
              ),
              // Container(
              //   width: 343,
              //   height: 135,
              //   child: Image.asset('assets/logos/BaseAds.png'),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 343,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20),
                        prefixIcon: Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 12.0),
                          child: Icon(Icons.search),
                        ),
                        hintText: "Cari makan yang kamu inginkan",
                        hintStyle: GoogleFonts.plusJakartaSans(
                            fontSize: 14, color: Colors.black),
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12))),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Rekomendasi",
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    recomendCard(),
                    recomendCard(),
                    recomendCard(),
                    recomendCard(),
                    recomendCard()
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Murah Terus",
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    recomendCard(),
                    recomendCard(),
                    recomendCard(),
                    recomendCard(),
                    recomendCard()
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sekitarmu",
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    recomendCard(),
                    recomendCard(),
                    recomendCard(),
                    recomendCard(),
                    recomendCard()
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
        )),
      );
    });
  }
}

class recomendCard extends StatelessWidget {
  const recomendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            width: 229,
            height: 147,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.asset('assets/logos/wargot.png')),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.01),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3)),
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
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      Image.asset('assets/logos/Star.png'),
                      Text(
                        '5.0',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: TextStyle(
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
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset('assets/logos/eclipse.png'),
                      ),
                      Text(
                        '12 menit',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: TextStyle(
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
