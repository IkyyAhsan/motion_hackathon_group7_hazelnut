import 'package:get/get.dart';

import '../controllers/search_press_controller.dart';

class SearchPressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchPressController>(
      () => SearchPressController(),
    );
  }
}
