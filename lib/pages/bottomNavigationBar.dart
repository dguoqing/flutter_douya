import 'package:flutter/material.dart';
import 'package:flutter_douya/pages/home/home.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(), //禁止滚动
        children: const <Widget>[HomePage()],
      ),
    );
  }
}
