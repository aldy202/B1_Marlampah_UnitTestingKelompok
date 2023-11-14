import 'package:get/get.dart';

import '../controllers/home_controller.dart';

/// Kelas HomeBinding merupakan kelas yang digunakan untuk menghubungkan antara code dart dengan platform native.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
