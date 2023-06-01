import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

// 1.防止重建加with 混入 AutomaticKeepAliveClientMixin类
class _GroupPageState extends State<GroupPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('小组initState');
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('小组'),
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text('小组页面'),
        ),
      ),
    );
  }
}
