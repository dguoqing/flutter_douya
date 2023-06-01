import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<MinePage> createState() => _MinePageState();
}

// 1.防止重建加with 混入 AutomaticKeepAliveClientMixin类
class _MinePageState extends State<MinePage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('我的initState');
  }

// 2.防止重建必须要的实现 返回true
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text('我的页面'),
        ),
      ),
    );
  }
}
