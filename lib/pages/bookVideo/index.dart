import 'package:flutter/material.dart';

class BookVideoPage extends StatefulWidget {
  const BookVideoPage({super.key});

  @override
  State<BookVideoPage> createState() => _BookVideoPageState();
}

class _BookVideoPageState extends State<BookVideoPage> {
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
