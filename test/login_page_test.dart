import 'package:final_project_2023/app/modules/login_page/controllers/login_page_controller.dart';
import 'package:final_project_2023/app/modules/login_page/views/login_page_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

class MockLoginPageController extends Mock implements LoginPageController {}

void main() {
  group('LoginPageController Tests', () {
    test('Login Success', () async {
      final controller = MockLoginPageController();
      when(controller.login('test@example.com', 'password'))
          .thenAnswer((_) async => null);

      controller.login('test@example.com', 'password');

      verify(controller.login('test@example.com', 'password')).called(1);
    });


  });
}
