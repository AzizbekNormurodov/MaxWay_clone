import 'package:flutter/cupertino.dart';
import 'package:maxway_clone/pages/main/checkout/chekout_page.dart';
import 'package:maxway_clone/pages/main/home/information_page.dart';
import 'package:maxway_clone/pages/main/home/product/lottie_page.dart';
import 'package:maxway_clone/pages/main/home/product/product_page.dart';
import 'package:maxway_clone/pages/main/main_page.dart';
import 'package:maxway_clone/pages/main/my_orders/current_page.dart';
import 'package:maxway_clone/pages/main/my_orders/history_page.dart';
import 'package:maxway_clone/pages/main/profile/about_service/about_service_page.dart';
import 'package:maxway_clone/pages/main/profile/about_service/conditionality_page.dart';
import 'package:maxway_clone/pages/main/profile/edit_profile/edit_profile_page.dart';
import 'package:maxway_clone/pages/main/profile/filial/filial_navoiy.dart';
import 'package:maxway_clone/pages/main/profile/filial/filial_page.dart';
import 'package:maxway_clone/pages/main/profile/settings/settings_page.dart';
import 'package:maxway_clone/pages/splash/splash_page.dart';
import 'package:maxway_clone/routes/app_routes.dart';

import '../pages/main/home/banner_page.dart';

class AppPages {
  AppPages._();

  static final Map<String, WidgetBuilder> routes = {
    AppRoutes.initial: (context) => const SplashPage(),
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.banner: (context) =>  const BannerPage(),
    AppRoutes.lottie: (context) => LottiePage(),
    AppRoutes.current: (context) => const CurrentPage(),
    AppRoutes.history: (context) => const HistoryPage(),
    AppRoutes.filial: (context) => const FilialPage(),
    AppRoutes.editProfile: (context) =>  EditProfilePage(),
    AppRoutes.settings: (context) => const SettingsPage(),
    AppRoutes.about: (context) => const AboutServicePage(),
    AppRoutes.filialnavoiy: (context) => const FilialNavoiyPage(),
    AppRoutes.conditionality: (context) => const ConditionalityPage(),
    AppRoutes.checkout: (context) => const CheckoutPage(),

  };
}
