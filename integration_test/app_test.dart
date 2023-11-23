import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:final_project_2023/app/modules/lapor_sampah/controllers/lapor_sampah_controller.dart';
import 'package:final_project_2023/app/modules/lapor_sampah/views/lapor_sampah_view.dart';
import 'package:final_project_2023/app/modules/login_page/views/login_page_view.dart';
import 'package:final_project_2023/app/modules/register_page/controllers/register_page_controller.dart';
import 'package:final_project_2023/app/modules/register_page/views/register_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:integration_test/integration_test.dart';
import 'package:final_project_2023/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('App Test', () {
    testWidgets('Login Berhasil', (tester) async {
      app.main();
      await tester.pumpWidget(GetMaterialApp(
        home: LoginPageView(),
      ));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(
          find.byType(TextFormField).at(0), 'fauzi@gmail.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(1), '123456789');
      await Future.delayed(const Duration(seconds: 2));
      FocusScope.of(tester.element(find.byType(TextFormField).at(1))).unfocus();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text("Masuk"));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      // Tambahkan penundaan atau langkah berikutnya setelah pumpAndSettle
      await Future.delayed(const Duration(seconds: 2));

      // Verifikasi bahwa HomeView ditemukan
      expect(find.byType(HomeView), findsOneWidget);
    });

    testWidgets('Test Register Berhasil', (tester) async {
      app.main();
      await tester.pumpWidget(GetMaterialApp(
        home: RegisterPageView(),
      ));
      Get.lazyPut(() => RegisterPageController());
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(
          find.byType(TextFormField).at(0), 'testresgister03@gmail.com');
      await Future.delayed(const Duration(seconds: 2));
      FocusScope.of(tester.element(find.byType(TextFormField).at(0))).unfocus();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(1), '123456789');
      await Future.delayed(const Duration(seconds: 2));
      FocusScope.of(tester.element(find.byType(TextFormField).at(1))).unfocus();
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text("Daftar"));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      // Tambahkan penundaan atau langkah berikutnya setelah pumpAndSettle
      await Future.delayed(const Duration(seconds: 2));

      // Verifikasi bahwa HomeView ditemukan
      expect(find.byType(LoginPageView), findsOneWidget);
    });

    testWidgets('Lapor Sampah', (tester) async {
      app.main();
      Get.lazyPut(() => LaporSampahController());
      await tester.pumpWidget(GetMaterialApp(
        home: LaporSampahView(),
      ));  
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(0), 'Naufal Rozan');
      await Future.delayed(const Duration(seconds: 2));
      FocusScope.of(tester.element(find.byType(TextField).at(0))).unfocus();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(
          find.byType(TextField).at(1), 'Bantul, Yogyakarta, Indonesia');
      await Future.delayed(const Duration(seconds: 2));
      FocusScope.of(tester.element(find.byType(TextField).at(1))).unfocus();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(2), 'rumah ujung');
      await Future.delayed(const Duration(seconds: 2));
      FocusScope.of(tester.element(find.byType(TextField).at(2))).unfocus();
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text('LAPORKAN!'));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      // Tambahkan penundaan atau langkah berikutnya setelah pumpAndSettle
      await Future.delayed(const Duration(seconds: 2));

      // Verifikasi bahwa HomeView ditemukan
      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
