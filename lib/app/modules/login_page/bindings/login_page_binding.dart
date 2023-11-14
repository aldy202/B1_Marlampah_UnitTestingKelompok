import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

/// Kelas ini berisi function untuk mendaoatkan binding dan controller
class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    );
  }
}
