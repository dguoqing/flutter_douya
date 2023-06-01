import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// 1.防止重建加with 混入 AutomaticKeepAliveClientMixin类
class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  void onPressed() {
    Get.toNamed('/login');
  }

  void onPressedPage() {
    Get.toNamed('/pageview');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('首页initState');
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        children: [
          const Text('首页'),
          TextButton(onPressed: onPressed, child: const Text('去登录')),
          TextButton(onPressed: onPressedPage, child: const Text('pageview页面'))
        ],
      )),
    );
  }
}
