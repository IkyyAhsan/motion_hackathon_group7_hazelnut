import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';

import '../controllers/checkout_screen_controller.dart';

class CheckoutScreenView extends GetView<CheckoutScreenController> {
  const CheckoutScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wartegkuy', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(color: KColors.statusHaveAccount, fontWeight: FontWeight.w600, fontSize: 18)),),
        centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16), 
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pengiriman', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: KColors.statusHaveAccount)),),
              const SizedBox(height: 12,),
              Container(
                width: double.infinity,
                height: 92,
                decoration: BoxDecoration(
                  color: KColors.formColor
                ),
                child: Padding(padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Biasa', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                            const SizedBox(width: 8,),
                            Text('10 Menit', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.labelTextColor)),),
                            
                          ],
                        ),
                        Row(
                              children: [
                                Text('3.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                                const SizedBox(width: 12,),
                                Icon(FluentIcons.radio_button_24_filled)
                              ],
                            )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Proritas', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                            const SizedBox(width: 8,),
                            Text('5 Menit', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.labelTextColor)),),
                            
                          ],
                        ),
                        Row(
                              children: [
                                Text('6.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                                const SizedBox(width: 12,),
                                Icon(FluentIcons.radio_button_24_regular)
                              ],
                            )
                      ],
                    ),
                  ],
                ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 124,
                decoration: BoxDecoration(
                  color: KColors.formColor
                ),
                child: Padding(padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lokasi pengantaran', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.darkGrey)),),
                        Text('Ubah Lokasi', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(color: KColors.primaryColor, fontSize: 14, fontWeight: FontWeight.w600)),)
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Text('Kost', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                    const SizedBox(height: 4,),
                    Text('Kost Rajawali Futsal, Jalan Sukabirus, RT.8/RW.8,\nCiteureup, Dayeuhkolot, BANDUNG', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: KColors.labelTextColor)),),
                  ],
                ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  children: [
                    Image.asset(KImages.productImage4, width: 88, height: 80,),
                    const SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sate Ayam', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                          const SizedBox(height: 40,),
                          Text('12.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: KColors.labelTextColor)),),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FluentIcons.subtract_circle_32_regular, color: KColors.primaryColor,),
                        const SizedBox(width: 16,),
                        Text('1', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.primaryColor)),),
                        const SizedBox(width: 16,),
                        Icon(FluentIcons.subtract_circle_32_regular, color: KColors.primaryColor)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  children: [
                    Image.asset(KImages.productImage4, width: 88, height: 80,),
                    const SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nasi Kuning', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
                          const SizedBox(height: 40,),
                          Text('11.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: KColors.labelTextColor)),),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FluentIcons.subtract_circle_32_regular, color: KColors.primaryColor,),
                        const SizedBox(width: 16,),
                        Text('1', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.primaryColor)),),
                        const SizedBox(width: 16,),
                        Icon(FluentIcons.subtract_circle_32_regular, color: KColors.primaryColor)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Text('Ringkasan Pembayaran', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),),
              const SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: KColors.primaryColor, width: 2)
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Harga', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(color: KColors.labelTextColor)),),
                        Text('23.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(color: KColors.labelTextColor)),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ongkos kirim', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(color: KColors.labelTextColor)),),
                        Text('3.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(color: KColors.labelTextColor)),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    const Divider(color: KColors.labelTextColor, thickness: 1,),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Pembayaran', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14,color: KColors.shoppingCart, fontWeight: FontWeight.w700)),),
                        Text('26.000  ', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14 ,color: KColors.shoppingCart, fontWeight: FontWeight.w700)),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 152,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp26.000',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 118,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: KColors.formColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tunai',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: KColors.shoppingCart,
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Icon(FluentIcons.ios_arrow_rtl_24_filled)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Container(
              decoration: BoxDecoration(),
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){}, 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black
                  )
                ),
                child: Text(
                  'Pesan sekarang', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                )
                ),
            )
          ],
        ),
      ),
    );
  }
}
