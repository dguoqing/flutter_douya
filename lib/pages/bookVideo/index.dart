import 'package:flutter/material.dart';

class BookVideoPage extends StatefulWidget {
  const BookVideoPage({super.key});

  @override
  State<BookVideoPage> createState() => _BookVideoPageState();
}

// 1.防止重建加with 混入 AutomaticKeepAliveClientMixin类
class _BookVideoPageState extends State<BookVideoPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('书影音initState');
  }

// 2.防止重建必须要的实现 返回true
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('书影音'),
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text('书影音页面'),
        ),
      ),
    );
  }
}
