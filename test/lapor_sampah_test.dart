import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:final_project_2023/app/modules/lapor_sampah/controllers/lapor_sampah_controller.dart';

class MockLaporSampahController extends Mock implements LaporSampahController {}

void main() {
  group('LaporSampahController Tests', () {
    test('Add Report Success', () async {
      final controller = MockLaporSampahController();

      // Konfigurasi mock untuk mendapatkan nilai kembali yang diinginkan saat fungsi addReport dipanggil
      when(controller.addReport('John Doe', 'Some Address', 'Landmark'))
          .thenAnswer((_) async => null);

      // Panggil fungsi addReport
      controller.addReport('John Doe', 'Some Address', 'Landmark');

      // Verifikasi bahwa fungsi addReport dipanggil sebanyak satu kali
      verify(controller.addReport('John Doe', 'Some Address', 'Landmark')).called(1);
    });
  });
}
