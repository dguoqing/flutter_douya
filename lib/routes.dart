import 'package:get/get.dart';
import 'package:flutter_douya/pages/home/home.dart';
import 'package:flutter_douya/pages/login/login.dart';
import 'package:flutter_douya/pages/pageView/pageView.dart';

class AppRouter {
  static final List<GetPage<dynamic>> getRoutes = [
    GetPage(name: '/', page: () => const HomePage()),
    GetPage(name: '/login', page: () => const Login()),
    GetPage(
        name: '/cccc',
        page: () => const MyPageView(),
        transition: Transition.rightToLeft),
  ];
}

List<GetPage<dynamic>> getRoutes = [
  GetPage(
      name: '/home',
      page: () => const HomePage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/login',
      page: () => const Login(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/usr',
      page: () => const MyPageView(),
      transition: Transition.rightToLeft),
];
