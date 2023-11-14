import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

/// Kelas IntroductionView merupakan kelas yang digunakan untuk menampilkan halaman introduction.
class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Berinteraksi dengan mudah",
            body: "Kamu hanya perlu melaporkan adanya penumpukan sampah.",
            image: Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/tumpukan_sampah.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Buat lingkungan menjadi lebih bersih",
            body: "Jadilah partisipan untuk membuat bumi menjadi lebih bersih.",
            image: Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/cleaning.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Aplikasi bebas biaya",
            body: "Kamu tidak perlu khawatir, aplikasi ini bebas biaya apapun.",
            image: Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/payment.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Gabung sekarang juga",
            body: "Daftarkan diri kamu untuk menjadi bagian pembersihan kota.",
            image: Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Center(
                child: Lottie.asset("assets/lottie/regist_cleaning.json"),
              ),
            ),
          ),
        ],

        /// Fungsi yang akan dijalankan ketika button next di tekan.
        onDone: () => Get.offAllNamed(Routes.LOGIN_PAGE),
        showSkipButton: true,
        skip: Text("Skip"),
        next: Text(
          "Next",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        done: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
