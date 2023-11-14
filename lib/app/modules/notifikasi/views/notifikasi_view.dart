import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/notifikasi_controller.dart';

///kelas NotifikasiView berisi widget untuk menampilkan notifikasi page.
class NotifikasiView extends GetView<NotifikasiController> {
  const NotifikasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifikasi'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.4,
                width: Get.width * 0.4,
                child: Lottie.asset('assets/lottie/no_notif.json'),
              ),
              Text(
                'Belum ada notifikasi untuk saat ini',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              )
            ],
          ),
        ));
  }
}
