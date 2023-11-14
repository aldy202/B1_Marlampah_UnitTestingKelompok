import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

///pada kelas NoData berisi widget untuk menampilkan halaman jika tidak ada data dalam riwayat laporan
class NoData extends StatelessWidget {
  const NoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: Get.height * 0.4,
            width: Get.width * 0.4,
            child: Lottie.asset('assets/lottie/empty.json'),
          )
        ],
      ),
    );
  }
}
