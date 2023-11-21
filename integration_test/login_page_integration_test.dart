import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:final_project_2023/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Login Integration Test", (WidgetTester tester) async {
    app.main();

    await tester.pump();

    expect(find.text('Masukan Email kamu'), findsOneWidget);
    expect(find.text('Masukan Password kamu'), findsOneWidget);
    expect(find.text('Masuk'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('emailField')), 'test@gmail.com');
    await tester.enterText(find.byKey(const Key('passwordField')), 'password');

    await tester.tap(find.text('Masuk'));
    await tester.pumpAndSettle();

    expect(find.text('Mari Laporkan Sampah'), findsOneWidget);
    expect(find.text('V.1.0.0'), findsOneWidget);
  });
}