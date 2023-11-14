import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/lapor_sampah/bindings/lapor_sampah_binding.dart';
import '../modules/lapor_sampah/views/lapor_sampah_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/notifikasi/bindings/notifikasi_binding.dart';
import '../modules/notifikasi/views/notifikasi_view.dart';
import '../modules/register_page/bindings/register_page_binding.dart';
import '../modules/register_page/views/register_page_view.dart';
import '../modules/riwayat_lapor/bindings/riwayat_lapor_binding.dart';
import '../modules/riwayat_lapor/views/riwayat_lapor_view.dart';

part 'app_routes.dart';

/// Kelas AppPages berisi semua route yang ada di aplikasi
/// AppPages berguna untuk mempermudah dalam melakukan navigasi
class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.LAPOR_SAMPAH,
      page: () => LaporSampahView(),
      binding: LaporSampahBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT_LAPOR,
      page: () => const RiwayatLaporView(),
      binding: RiwayatLaporBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => const NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
  ];
}
