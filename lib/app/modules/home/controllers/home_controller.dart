import 'package:get/get.dart';

class HomeController extends GetxController {

  var sliderIndex = 0;

  void changeSliderIndex(int index) {
    sliderIndex = index;
    update();
  }
}
