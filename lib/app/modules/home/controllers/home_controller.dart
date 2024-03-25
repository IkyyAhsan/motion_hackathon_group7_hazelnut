import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var SliderIndex = 0;

  void ChangeSliderIndex(int index) {
    SliderIndex = index;
    update();
  }
}
