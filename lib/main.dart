import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home/home.dart';
import 'package:flutter_douya/routes.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '豆芽',
      initialRoute: '/home',
      // home: const HomePage(),
      getPages: getRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
