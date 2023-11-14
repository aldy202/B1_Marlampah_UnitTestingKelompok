import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/lapor_sampah_controller.dart';

/// Kelas LaporSampahView merupakan kelas yang digunakan untuk menampilkan halaman lapor sampah.
class LaporSampahView extends GetView<LaporSampahController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Laporan'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.4,
                width: Get.width * 0.4,
                child: Lottie.asset('assets/lottie/report.json'),
              ),
      
              /// Mengambil Inputan dari user.
              TextField(
                /// Menggunakan controller untuk mengambil data dari textfield.
                /// Data akan disimpan ke [controller.nameC]
                controller: controller.nameC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Nama Pelapor',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //// Mengambil Inputan dari user.
              TextField(
                /// Menggunakan controller untuk mengambil data dari textfield.
                /// Data akan disimpan ke [controller.alamatC]
                controller: controller.alamatC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Alamat Penumpukan',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //// Mengambil Inputan dari user.
              TextField(
                /// Menggunakan controller untuk mengambil data dari textfield.
                /// Data akan disimpan ke [controller.patokanC]
                controller: controller.patokanC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: 'Patokan Lokasi',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                /// Menambahkan data ke firestore saat button di klik.
                onPressed: () => controller.addReport(controller.nameC.text,
                    controller.alamatC.text, controller.patokanC.text),
                child: Text('LAPORKAN!'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
