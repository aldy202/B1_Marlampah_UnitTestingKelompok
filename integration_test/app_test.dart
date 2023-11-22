import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:final_project_2023/app/modules/login_page/views/login_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:integration_test/integration_test.dart';
import 'package:final_project_2023/main.dart' as app;
import 'package:lottie/lottie.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("testing page", () {
    testWidgets('LoginPageView integration test', (tester) async {
      app.main();
      await tester.pumpWidget(GetMaterialApp(
        home: LoginPageView(),
      ));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(0), 'fauzi@gmail.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(1), '123456789');
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.text("Masuk"));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      // Tambahkan penundaan atau langkah berikutnya setelah pumpAndSettle
      await Future.delayed(const Duration(seconds: 2));

      // Verifikasi bahwa HomeView ditemukan
      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
