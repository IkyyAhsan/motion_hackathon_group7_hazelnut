import 'package:get/get.dart';

import '../modules/alamat_pengiriman/bindings/alamat_pengiriman_binding.dart';
import '../modules/alamat_pengiriman/views/alamat_pengiriman_view.dart';
import '../modules/history_screen/bindings/history_screen_binding.dart';
import '../modules/history_screen/views/history_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';
import '../modules/metode_pembayaran/bindings/metode_pembayaran_binding.dart';
import '../modules/metode_pembayaran/views/metode_pembayaran_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/navbar_view.dart';
import '../modules/notifikasi/bindings/notifikasi_binding.dart';
import '../modules/notifikasi/views/notifikasi_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/product_screen/bindings/product_screen_binding.dart';
import '../modules/product_screen/views/product_screen_view.dart';
import '../modules/profile_screen/bindings/profile_screen_binding.dart';
import '../modules/profile_screen/views/profile_screen_view.dart';
import '../modules/register_screen/bindings/register_screen_binding.dart';
import '../modules/register_screen/views/register_screen_view.dart';
import '../modules/shopping_cart/bindings/shopping_cart_binding.dart';
import '../modules/shopping_cart/views/shopping_cart_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SCREEN,
      page: () => const RegisterScreenView(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_SCREEN,
      page: () => const HistoryScreenView(),
      binding: HistoryScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_SCREEN,
      page: () => const ProductScreenView(),
      binding: ProductScreenBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_CART,
      page: () => const ShoppingCartView(),
      binding: ShoppingCartBinding(),
    ),
    GetPage(
      name: _Paths.METODE_PEMBAYARAN,
      page: () => const MetodePembayaranView(),
      binding: MetodePembayaranBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => const NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
    GetPage(
      name: _Paths.ALAMAT_PENGIRIMAN,
      page: () => const AlamatPengirimanView(),
      binding: AlamatPengirimanBinding(),
    ),
  ];
}
