import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
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
          children: [
            Container(
              height: 28,
              width: 343,
              color: KColors.formColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(FluentIcons.building_shop_20_filled),
                      const SizedBox(width: 10,),
                      Text('Barokah', style: GoogleFonts.plusJakartaSans(textStyle: TextStyle(fontSize: 14, color: KColors.shoppingCart, fontWeight: FontWeight.w500)),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
