import 'package:get/get.dart';

import '../controllers/lapor_sampah_controller.dart';

class LaporSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporSampahController>(
      () => LaporSampahController(),
    );
  }
}
