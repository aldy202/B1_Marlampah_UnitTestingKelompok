import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

class RiwayatLaporController extends GetxController {
  Firestore firestore = Firestore.instance;

  Future<Page<Document>> getReport() async {
    CollectionReference laporan = firestore.collection('laporan');

    return laporan.get();
  }

  Future<void> getData() async {
    final firestore = Firestore.instance;
    final laporan = firestore.collection('laporan');
    final snapshot = await laporan.get();
  }
}
