import 'package:final_project_2023/app/widgets/card_home.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

///  Kelas HomeView merupakan kelas yang digunakan untuk menampilkan halaman home.
/// Halaman home ini akan menampilkan beberapa button untuk menuju ke page lain.
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// AppBar merupakan sebuah widget yang digunakan untuk menampilkan judul dan logo.
        appBar: AppBar(
          title: Text('Marlampah'),
          backgroundColor: Colors.red,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Image.asset('assets/logo/marlampah.png'),
          ),

          /// actions merupakan sebuah widget yang digunakan untuk menampilkan beberapa button.
          actions: [
            IconButton(

                /// Halaman akan berpindah ke riwayat jika button di klik.
                onPressed: () {
                  HomeController().riwayat();
                },
                icon: Icon(Icons.article)),
            IconButton(

                /// Halaman akan berpindah ke notifikasi jika button di klik.
                onPressed: () {
                  HomeController().notif();
                },
                icon: Icon(Icons.notifications))
          ],
        ),
        body: Column(
          children: [
            Container(
              /// Lottie merupakan sebuah widget yang digunakan untuk menampilkan animasi.
              height: Get.height * 0.4,
              width: Get.width * 0.4,
              child: Lottie.asset('assets/lottie/hello_home.json'),
            ),

            /// Menampilkan widget CardHome.
            CardHome(),
            ElevatedButton.icon(
              onPressed: () {
                /// Keluar dari aplikasi saat menekan button keluar.
                HomeController().signOut();
              },
              icon: Icon(Icons.logout),
              label: Text('Keluar'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            )
          ],
        ));
  }
}
