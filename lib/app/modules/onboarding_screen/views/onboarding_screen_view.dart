import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/onboarding_screen_controller.dart';

// class OnboardingScreenView extends GetView<OnboardingScreenController> {
//   const OnboardingScreenView({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Horizontal Scrollable
// //           PageView(
// //             children: [
// //               OnBoardingPage(image: KImages.onBoardingImage1,),
// //               OnBoardingPage(image: KImages.onBoardingImage1,),
// //             ],
// //           ),
        
// //           // Selanjutnya Button
// //           onBoardingNextButton(),

// //           // Dot Navigation
// //           Positioned(
// //             bottom: kBottomNavigationBarHeight * 25,
// //             child: SmoothPageIndicator(controller: PageController(), count: 2))
// //         ],
// //       )
// //     );
// //   }
// // }

// // class onBoardingNextButton extends StatelessWidget {
// //   const onBoardingNextButton({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return ElevatedButton(
// //             onPressed: (){}, 
// //             style: ButtonStyle(shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
// //     RoundedRectangleBorder(
// //       borderRadius: BorderRadius.circular(10)
// //     )
// //             ), backgroundColor: MaterialStateProperty.all(KColors.primaryColor)),
// //             child: Text('Daftar', style: GoogleFonts.plusJakartaSans(color: Colors.white, fontSize: 18),),
// //             );
// //   }
// // }

// // class OnBoardingPage extends StatelessWidget {
// //   const OnBoardingPage({
// //     super.key, 
// //     required this.image,
// //   });

// //   final String image;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: EdgeInsets.all(8),
// //       child: Column(
// //         children: [
// //           Image(
// //             width: MediaQuery.of(Get.context!).size.width * 0.6,
// //             height: MediaQuery.of(Get.context!).size.height * 0.6,
// //             image: AssetImage(image)
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
