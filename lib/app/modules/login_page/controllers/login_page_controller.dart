import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

/// Kelas LoginPageController berisi function untuk login, logout, dan register
/// Kelas ini merupakan controller dari LoginPage
class LoginPageController extends GetxController {
  /// dengan menggunakan function [login], kamu akan diminta untuk
  /// memasukkan email dan password, setelah terverifikasi maka akan diarahkan ke page home.
  void login(String email, String password) async {
    try {
      await FirebaseAuth.instance.signIn(email, password);
      var user = await FirebaseAuth.instance.getUser();
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "Format email tidak sesuai",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: INVALID_PASSWORD") {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "Password salah",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: EMAIL_NOT_FOUND") {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "User belum terdaftar",
          duration: Duration(seconds: 2),
        ));
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "Unknow Error",
          duration: Duration(seconds: 2),
        ));
      }
    }
  }

  /// dengan menggunakan function [logout], kamu akan kembali ke Login Page
  void logout() {
    FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }

  /// dengan menggunakan function [register], kamu akan diarahkan ke page register
  /// untuk membuat akun baru.
  void register() {
    Get.offAllNamed(Routes.REGISTER_PAGE);
  }
}
