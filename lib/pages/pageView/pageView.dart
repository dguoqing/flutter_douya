import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pageView'),
        centerTitle: true,
      ),
      body: PageView(
        children: const <Widget>[
          Center(
            child: Text('234234'),
          ),
          Center(
            child: Text('55555'),
          )
        ],
      ),
    );
  }
}

// class PageViewExample extends StatelessWidget {
//   const PageViewExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final PageController controller = PageController();
//     return PageView(
//       // controller: controller,
//       children: const <Widget>[
//         Center(
//           child: Text('111111'),
//         ),
//         Center(
//           child: Text('222222'),
//         ),
//         Center(
//           child: Text('3333333'),
//         )
//       ],
//     );
//   }
// }
