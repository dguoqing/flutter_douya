import 'package:flutter_douya/pages/bottomNavigationBar.dart';
import 'package:get/get.dart';
import 'package:flutter_douya/pages/home/home.dart';
import 'package:flutter_douya/pages/login/login.dart';
import 'package:flutter_douya/pages/pageView/pageView.dart';

class AppRouter {
  static final List<GetPage<dynamic>> getRoutes = [
    GetPage(name: '/', page: () => const HomePage()),
    GetPage(name: '/login', page: () => const Login()),
    GetPage(
        name: '/pageview',
        page: () => const MyPageView(),
        transition: Transition.rightToLeft),
  ];
}

List<GetPage<dynamic>> getRoutes = [
  GetPage(
      name: '/home',
      page: () => const MainBottomNavBar(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/login',
      page: () => const Login(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/pageview',
      page: () => const MyPageView(),
      transition: Transition.rightToLeft),
];
