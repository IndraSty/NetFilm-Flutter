import 'package:get/get.dart';

import '../../utils/page/movie_list.dart';
import '../modules/bot_nav_bar/bindings/bot_nav_bar_binding.dart';
import '../modules/bot_nav_bar/views/bot_nav_bar_view.dart';
import '../modules/catalog/bindings/catalog_binding.dart';
import '../modules/catalog/views/catalog_view.dart';
import '../modules/daftar/bindings/daftar_binding.dart';
import '../modules/daftar/views/daftar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onClick/bindings/on_click_binding.dart';
import '../modules/onClick/views/on_click_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/whishlist/bindings/whishlist_binding.dart';
import '../modules/whishlist/views/whishlist_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR,
      page: () => const DaftarView(),
      binding: DaftarBinding(),
    ),
    GetPage(
      name: _Paths.WHISHLIST,
      page: () => const WhishlistView(),
      binding: WhishlistBinding(),
    ),
    GetPage(
      name: _Paths.CATALOG,
      page: () => const CatalogView(),
      binding: CatalogBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.ON_CLICK,
      page: () => OnClickView(),
      binding: OnClickBinding(),
    ),
    GetPage(
      name: _Paths.BOT_NAV_BAR,
      page: () => const BotNavBarView(),
      binding: BotNavBarBinding(),
    ),
  ];
}
