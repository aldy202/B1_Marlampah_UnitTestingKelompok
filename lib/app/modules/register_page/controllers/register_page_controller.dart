import 'package:final_project_2023/app/modules/login_page/views/login_page_view.dart';
import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

/// Kelas RegisterPageController berisi function untuk membantu dalam proses register
class RegisterPageController extends GetxController {
  void daftar(String email, String password) async {
    try {
      await FirebaseAuth.instance.signUp(email, password);
      Get.showSnackbar(const GetSnackBar(
        title: "Register Success",
        message: "Silahkan Login",
        duration: Duration(seconds: 2),
      ));
      Get.offAll(() => LoginPageView());
    } catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Format email tidak sesuai",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: EMAIL_EXISTS") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Email sudah terdaftar",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: WEAK_PASSWORD") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Password terlalu lemah",
          duration: Duration(seconds: 2),
        ));
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Unknow Error",
          duration: Duration(seconds: 2),
        ));
      }
    }
  }

  /// dengan menggunakan function [masuk], kamu akan diarahkan ke page login
  void masuk() {
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }
}
