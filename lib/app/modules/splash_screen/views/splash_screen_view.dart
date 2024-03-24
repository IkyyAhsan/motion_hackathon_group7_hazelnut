import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/routes/app_pages.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/widgets/center_logo.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      initState: (_){
        Timer(const Duration(seconds: 2), () {
          Get.offAllNamed(Routes.LOGIN_SCREEN);
        });
      },
      builder: (context) {
        return const Scaffold(
          body: CenterLogo(
            logo: KImages.appLogo,
            width: 253,
            height: 55,
            )
        );
      },
      );
  }
}
