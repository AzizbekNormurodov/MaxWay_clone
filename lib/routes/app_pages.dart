import 'package:flutter/cupertino.dart';
import 'package:maxway_clone/pages/main/home/information_page.dart';
import 'package:maxway_clone/pages/main/home/product/lottie_page.dart';
import 'package:maxway_clone/pages/main/home/product/product_page.dart';
import 'package:maxway_clone/pages/main/main_page.dart';
import 'package:maxway_clone/pages/main/my_orders/current_page.dart';
import 'package:maxway_clone/pages/main/my_orders/history_page.dart';
import 'package:maxway_clone/pages/main/profile/edit_profile/edit_profile_page.dart';
import 'package:maxway_clone/pages/main/profile/settings/settings_page.dart';
import 'package:maxway_clone/pages/splash/splash_page.dart';
import 'package:maxway_clone/routes/app_routes.dart';

import '../pages/main/home/banner_page.dart';

class AppPages {
  AppPages._();

  static final Map<String, WidgetBuilder> routes = {
    AppRoutes.initial: (context) => const SplashPage(),
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.settings: (context) => const SettingsPage(),
    AppRoutes.editProfile: (context) => const EditProfilePage(),
    AppRoutes.banner: (context) =>  const BannerPage(),
    AppRoutes.lottie: (context) => LottiePage(),
    AppRoutes.current: (context) => const CurrentPage(),
    AppRoutes.history: (context) => const HistoryPage(),

  };
}
