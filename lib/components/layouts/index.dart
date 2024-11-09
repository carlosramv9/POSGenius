import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key, required this.body});

  final Widget body;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POS Genius'),
        backgroundColor: const Color(0xFF894176),
      ),
      body: widget.body,
    );
  }
}
