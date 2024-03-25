import 'package:get/get.dart';

import '../controllers/history_screen_controller.dart';

class HistoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryScreenController>(
      () => HistoryScreenController(),
    );
  }
}
