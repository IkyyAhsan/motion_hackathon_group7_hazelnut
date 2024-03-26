import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import '../controllers/product_screen_controller.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/product_screen/views/widgets/searchBubble.dart';

class ProductScreenView extends GetView<ProductScreenController> {
  const ProductScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 20),
                prefixIcon: const Padding(
                  padding: EdgeInsetsDirectional.only(start: 12.0),
                  child: Icon(
                    Icons.search,
                    color: KColors.labelTextColor,
                  ),
                ),
                hintText: KTexts.eatSearch,
                hintStyle: GoogleFonts.plusJakartaSans(
                    fontSize: 14, color: KColors.labelTextColor),
                fillColor: KColors.formColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                KTexts.populer,
                style: GoogleFonts.plusJakartaSans(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              searchBubble(namaResto: "Barokah"),
              searchBubble(namaResto: "Pandawa"),
              searchBubble(namaResto: "Warkop add")
            ],
          ),
          Row(
            children: [
              searchBubble(namaResto: "Wartegkuy"),
              searchBubble(namaResto: "Makmur")
            ],
          )
        ],
      ),
    ))));
  }
}
