import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  final String title;
  final Widget body;

  const MainLayout({Key? key, required this.title, required this.body})
    : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 79, 226, 255),
        title: Text(widget.title),
      ),
      body: widget.body,
    );
  }
}
