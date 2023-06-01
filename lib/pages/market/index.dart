import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

// 1.防止重建加with 混入 AutomaticKeepAliveClientMixin类
class _MarketPageState extends State<MarketPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('市集initState');
  }

// 2.防止重建必须要的实现 返回true
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('市集'),
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text('市集页面'),
        ),
      ),
    );
  }
}
