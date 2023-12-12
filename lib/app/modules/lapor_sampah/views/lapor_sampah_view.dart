import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/lapor_sampah_controller.dart';

class LaporSampahView extends GetView<LaporSampahController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Laporan'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.2,  // Sesuaikan tinggi sesuai kebutuhan
                width: Get.width * 0.4,
                child: Lottie.asset('assets/lottie/report.json'),
              ),
              TextField(
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
              TextField(
                controller: controller.alamatC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Alamat Penumpukan',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
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
                onPressed: () => controller.addReport(
                  controller.nameC.text,
                  controller.alamatC.text,
                  controller.patokanC.text,
                ),
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
