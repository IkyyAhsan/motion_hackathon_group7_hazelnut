import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/home/views/widgets/recommended_card.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/text_strings.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomeView extends GetView<HomeController> {
  @override
  final HomeController controller = Get.put(HomeController());

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    KTexts.rizalCanEatToday,
                    maxLines: 2,
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.SHOPPING_CART),
                    child: const SizedBox(
                      width: 52,
                      height: 52,
                      child: Image(
                        image: AssetImage(
                          KImages.notifLogo))),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 135.0,
                  onPageChanged: (index, reason) =>
                      controller.changeSliderIndex(index),
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: const Image(image: AssetImage(KImages.banner1),
                            fit: BoxFit.cover,
                          )
                            
                          ),
                        );
                    },
                  );
                }).toList(),
              ),
              DotsIndicator(
                dotsCount: 5,
                position: controller.sliderIndex,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: KColors.formColor),
                  child: StickyHeader(
                    header: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(top: 20),
                            prefixIcon: const Padding(
                              padding:
                                  EdgeInsetsDirectional.only(start: 12.0),
                              child: Icon(Icons.search, color: KColors.labelTextColor,),
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
                    ),
                    content: Column(
                      children: [
                        const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    KTexts.recommendation,
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    KTexts.alwaysChip,
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard()
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    KTexts.aroundYou,
                    style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(image: AssetImage(KImages.invitationBanner), width: 343, height: 130,),
              const SizedBox(
                height: 16,
              )
                      ],
                    ),
                )
                  ),
            ]
            ),
          ),
        )),
      );
    });
  }
}