import 'package:artical/core/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconWidget(
          icon: Icons.menu,
          size: 25,
          color: Colors.white,
        ),
        title: const TextWidget(
          name: 'NY Times Most Popular',
          fontSize: 20,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff45E3C2),
        actions: appBarWidget,
      ),
      body: const Column(
        children: [
          ArtivalWidget(),
        ],
      ),
    );
  }
}
