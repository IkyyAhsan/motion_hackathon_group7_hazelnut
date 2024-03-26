import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/navbar/views/navbar_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/search_press/views/widgets/search_results.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';

import '../controllers/search_press_controller.dart';

class SearchPressView extends GetView<SearchPressController> {
  const SearchPressView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavbarView(),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 20),
                    prefixIcon: const Padding(
                      padding: EdgeInsetsDirectional.only(start: 12.0),
                      child: Icon(Icons.search, color: KColors.labelTextColor,),
                      ),
                      hintText: KTexts.eatSearch,
                      hintStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14, color: KColors.labelTextColor
                      ),
                      fillColor: KColors.formColor,
                      filled: true,
                      border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)
                      )
                    ),
                ),
              ),
              const SizedBox(height: 20,),
              Text('Populer', style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),),
              const SizedBox(height: 12,),
              const Column(
                children: [
                  Row(
                    children: [
                      search_result(text: 'Barokah', width: 80,),
                      SizedBox(width: 12,),
                      search_result(text: 'Pandawa', width: 85,),
                      SizedBox(width: 12,),
                      search_result(text: 'Warkop add', width: 102,),
                    ],
                  ),
                  Row(
                    children: [
                      search_result(text: 'Wartegkuy', width: 94,),
                      SizedBox(width: 12,),
                      search_result(text: 'Makmur', width: 78,),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

