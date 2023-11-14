import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:get/get.dart';

import 'app/controllers/auth_controller.dart';
import 'app/data/hive_store.dart';
import 'app/data/token_adaptor.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/SplashScreen.dart';

const apiKey = "AIzaSyD5n8FGiPGQLghXfcQVLhAEAbKqLVKR4Ys";
const projectId = "marlampah";

/// Titik utama proses ekesekusi operasi.
Future<void> main() async {
  Firestore.initialize(projectId);
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TokenAdapter());
  FirebaseAuth.initialize(apiKey, await HiveStore.create());

  runApp(MyApp());
}

/// Kelas MyApp merupakan kelas utama yang akan dijalankan pertama kali.
/// Kelas ini akan mengeksekusi proses inisialisasi aplikasi.
/// Dalam kelas ini juga akan mengeksekusi proses Introduction Screen.
/// Jika Introduction Screen sudah pernah dijalankan maka akan langsung menuju ke login page.
class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: authC.isSkipIntro.isTrue
                ? authC.isAuth.isTrue
                    ? Routes.HOME
                    : Routes.LOGIN_PAGE
                : Routes.INTRODUCTION,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}
