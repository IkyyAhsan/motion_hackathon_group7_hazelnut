import 'package:get/get.dart';

class NavbarController extends GetxController {
  //TODO: Implement NavbarController
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
