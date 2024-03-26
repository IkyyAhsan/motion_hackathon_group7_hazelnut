import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

import '../controllers/shopping_cart_controller.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  const ShoppingCartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          KTexts.shoppingCart,
          style: GoogleFonts.plusJakartaSans(
            textStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: KColors.shoppingCart
            )
          ),
        ),bottom: PreferredSize( // Widget untuk menambahkan garis di bagian bawah AppBar
            preferredSize: Size.fromHeight(2), // Ketinggian garis
            child: Container(
              color: KColors.dividerGrey,
              height: 2,
            ),
          ),
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(FluentIcons.arrow_left_24_regular)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 192,
              width: double.infinity,
              color: KColors.formColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FluentIcons.building_shop_20_filled),
                              const SizedBox(width: 10,),
                              Text('Barokah', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.shoppingCart, fontWeight: FontWeight.w500)),),
                            ],
                          ),
                        ),
                        Text('Hapus', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.redDelete, fontWeight: FontWeight.w600)),)
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Image.asset(KImages.productImage1, height: 72, width: 108, fit: BoxFit.cover,),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nasi ayam',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'x2',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.labelTextColor)),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Rp12.000',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),
                            ),
                            const SizedBox(height: 16,),
                            
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Total: ', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.statusHaveAccount)),),
                            Text('Rp24.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: KColors.statusHaveAccount)),),
                          ],
                        ),
                        SizedBox(
                          height: 36,
                          width: 135,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ), 
                              backgroundColor: MaterialStateProperty.all(KColors.primaryColor)
                            ),
                            child: Text('Checkout', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),),
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 310,
              width: double.infinity,
              color: KColors.formColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FluentIcons.building_shop_20_filled),
                              const SizedBox(width: 10,),
                              Text('Wartegkuy', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.shoppingCart, fontWeight: FontWeight.w500)),),
                            ],
                          ),
                        ),
                        Text('Hapus', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.redDelete, fontWeight: FontWeight.w600)),)
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Image.asset(KImages.productImage2, height: 72, width: 108, fit: BoxFit.cover,),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Indomie Goreng',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'x3',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.labelTextColor)),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Rp5.000',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),
                            ),
                            const SizedBox(height: 16,),
                            
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Image.asset(KImages.productImage3, height: 72, width: 108, fit: BoxFit.cover,),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Milo dingin',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'x1',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.labelTextColor)),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Rp4.000',
                              style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.statusHaveAccount)),
                            ),
                            const SizedBox(height: 32,),
                            
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Total: ', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.statusHaveAccount)),),
                            Text('Rp19.000', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: KColors.statusHaveAccount)),),
                          ],
                        ),
                        SizedBox(
                          height: 36,
                          width: 135,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ), 
                              backgroundColor: MaterialStateProperty.all(KColors.primaryColor)
                            ),
                            child: Text('Checkout', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),),
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
