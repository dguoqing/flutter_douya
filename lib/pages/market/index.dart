import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('市集initState');
  }

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
