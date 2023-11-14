import 'package:get/get.dart';

import '../controllers/introduction_controller.dart';

/// Kelas IntroductionBinding merupakan kelas yang digunakan untuk menghubungkan antara code dart dengan platform native.
class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(
      () => IntroductionController(),
    );
  }
}
