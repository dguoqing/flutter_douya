import 'package:flutter/material.dart';
import 'package:flutter_douya/pages/bookVideo/index.dart';
import 'package:flutter_douya/pages/group/index.dart';
import 'package:flutter_douya/pages/home/home.dart';
import 'package:flutter_douya/pages/market/index.dart';
import 'package:flutter_douya/pages/mine/mine.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int currentIndex = 0;
  final List<Widget> _children = [
    const HomePage(),
    const BookVideoPage(),
    const GroupPage(),
    const MarketPage(),
    const MinePage()
  ];

  List<BottomNavigationBarItem> getBottomNavigationBarItems() {
    return [
      const BottomNavigationBarItem(
        label: '首页',
        icon: Icon(Icons.home),
      ),
      const BottomNavigationBarItem(
        label: '书影音',
        icon: Icon(Icons.movie),
      ),
      const BottomNavigationBarItem(label: '小组', icon: Icon(Icons.group)),
      const BottomNavigationBarItem(
          label: '市集', icon: Icon(Icons.mark_chat_read_sharp)),
      const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.person)),
    ];
  }

  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(), //禁止滚动
        children: _children,
        controller: pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            pageController.jumpToPage(value);
            setState(() {
              currentIndex = value;
            });
          },
          items: getBottomNavigationBarItems()),
    );
  }
}
