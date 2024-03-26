import 'package:get/get.dart';

import '../controllers/alamat_pengiriman_controller.dart';

class AlamatPengirimanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlamatPengirimanController>(
      () => AlamatPengirimanController(),
    );
  }
}
