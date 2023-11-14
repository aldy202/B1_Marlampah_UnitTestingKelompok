import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

/// Kelas HomeController merupakan kelas yang digunakan untuk mengatur tampilan backend halaman home.
/// User dapat melihat riwayat lapor, melihat notifikasi, dan melakukan logout.
/// dengan menggunakan operasi [Laporan], [Riwayat], [Notifikasi], dan [SignOut]
class HomeController extends GetxController {
  Firestore firestore = Firestore.instance;
  void laporan() {
    Get.toNamed(Routes.LAPOR_SAMPAH);
  }

  void riwayat() {
    Get.toNamed(Routes.RIWAYAT_LAPOR);
  }

  void notif() {
    Get.toNamed(Routes.NOTIFIKASI);
  }

  void signOut() {
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }
}
