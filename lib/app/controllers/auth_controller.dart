import 'package:get/get.dart';

/// Kelas AuthController merupakan kelas yang digunakan untuk menyimpan Login.
/// Jika sudah melakukan login maka akan langsung menuju ke halaman home.

class AuthController extends GetxController {
  var isSkipIntro = false.obs;
  var isAuth = false.obs;
}
