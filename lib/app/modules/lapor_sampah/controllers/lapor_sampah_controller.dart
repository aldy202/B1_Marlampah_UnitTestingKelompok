import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Kelas LaporSampahController merupakan kelas yang digunakan untuk menyimpan data laporan sampah.
/// Kelas ini mempunyai parameter [nama], [alamat], [patokan] yang bertipe data [String], ketiganya digunakan untuk menyimpan hasil input data dari user.
class LaporSampahController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController alamatC;
  late TextEditingController patokanC;

  /// Fungsi ini digunakan untuk menyimpan data laporan sampah ke dalam database.
  void addReport(String nama, String alamat, String patokan) async {
    print('Laporan Sampah attempted with nama: $nama, alamat: $alamat, patokan: $patokan');
    CollectionReference laporan = Firestore.instance.collection('laporan');
    try {
      await laporan.add({
        'nama': nama,
        'alamat': alamat,
        'patokan': patokan,
      });
      Get.offAll(() => HomeView());
      /// Jika berhasil menyimpan data laporan sampah ke dalam database, maka akan muncul dialog yang berisi pesan bahwa laporan berhasil disimpan.
      // Get.defaultDialog(
      //   title: 'Laporan Berhasil',
      //   middleText: 'Terima kasih atas laporannya',
      //   onConfirm: () {
      //     nameC.clear();
      //     alamatC.clear();
      //     patokanC.clear();
      //     Get.back();
      //     Get.back();
      //   },
      //   textConfirm: 'OK',
      // );
      print('Laporan Sampah Done');

      /// Jika gagal menyimpan data laporan sampah ke dalam database, maka akan muncul dialog yang berisi pesan bahwa laporan gagal disimpan.
    } catch (e) {
      print(e);
      Get.defaultDialog(
          title: 'Terjadi Kesalahan', middleText: 'Silahkan coba lagi');
    }
  }

  @override

  /// Fungsi ini digunakan untuk menginisialisasi controller.
  void onInit() {
    nameC = TextEditingController();
    alamatC = TextEditingController();
    patokanC = TextEditingController();
    super.onInit();
  }

  @override

  /// Fungsi ini digunakan untuk menghapus controller.
  void onClose() {
    nameC.dispose();
    alamatC.dispose();
    patokanC.dispose();
    super.onClose();
  }
}
