import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_page_controller.dart';

///pada kelas LoginPageView, terdapat sebuah form untuk memasukkan [email] dan [pass].
///pada form tersebut, terdapat validasi untuk memastikan bahwa [email] dan [pass] tidak kosong.
class LoginPageView extends GetView<LoginPageController> {
  LoginPageView({Key? key}) : super(key: key);

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
              child: Lottie.asset('assets/lottie/login.json'),
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email harus di isi';
                      }
                      return null;
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password harus di isi!';
                      }
                      return null;
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
                  LoginPageController().login(email, pass);
                },
                child: const Text('Masuk'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Belum punya akun?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    LoginPageController().register();
                  },
                  child: Text(
                    ' Daftar Sekarang',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
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
