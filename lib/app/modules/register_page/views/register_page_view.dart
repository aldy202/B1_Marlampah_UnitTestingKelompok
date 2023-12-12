import 'package:final_project_2023/app/modules/login_page/views/login_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/register_page_controller.dart';

///pada kelas RegisterPageView, terdapat sebuah form untuk memasukkan [email] dan [pass].
///pada form tersebut, terdapat validasi untuk memastikan bahwa [email] dan [pass] tidak kosong.
class RegisterPageView extends GetView<RegisterPageController> {
  RegisterPageView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: Get.height * 0.3,
              width: Get.width * 0.3,
              child: Lottie.asset('assets/lottie/registration.json'),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukan Email kamu',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    onChanged: (newValue) {
                      email = newValue;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukan Password kamu',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key),
                    ),
                    onChanged: (newValue) {
                      pass = newValue;
                    },
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  RegisterPageController().daftar(email, pass);
                },
                child: const Text('Daftar'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sudah punya akun?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    RegisterPageController().masuk();
                  },
                  child: Text(
                    ' Masuk sekarang',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text('Mari Laporkan Sampah'),
            const Text('V.1.0.0'),
          ],
        ),
      ),
    );
  }
}
