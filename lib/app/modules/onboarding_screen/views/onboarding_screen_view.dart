import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: MediaQuery.of(Get.context!).size.width * 0.6,
                    height: MediaQuery.of(Get.context!).size.height * 0.6,
                    image: AssetImage(KImages.onBoardingImage1))
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
