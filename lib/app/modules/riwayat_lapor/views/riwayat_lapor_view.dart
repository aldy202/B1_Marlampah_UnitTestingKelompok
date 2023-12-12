import 'package:final_project_2023/app/utils/no_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/riwayat_lapor_controller.dart';

class RiwayatLaporView extends GetView<RiwayatLaporController> {
  const RiwayatLaporView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan Kamu'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 73, 244, 54),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: controller.getReport(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                // Menyusun daftar laporan berdasarkan nama secara alfabetis
                List sortedReports = snapshot.data!.cast().toList();
                sortedReports
                    .sort((a, b) => a.map['nama'].compareTo(b.map['nama']));

                return ListView.builder(
                  itemCount: sortedReports.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      title: Text('${sortedReports[index].map['nama']}'),
                      subtitle: Text(
                        'Alamat : ${sortedReports[index].map['alamat']} \nPatokan : ${sortedReports[index].map['patokan']}',
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else if (snapshot.data == null) {
                return const NoData();
              } else {
                return const Center(child: Text('Something Wrong'));
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
