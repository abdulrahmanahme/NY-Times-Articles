import 'package:artical/core/widget.dart';
import 'package:flutter/material.dart';

class ArticalScreen extends StatefulWidget {
  const ArticalScreen({super.key});

  @override
  State<ArticalScreen> createState() => _ArticalScreenState();
}

class _ArticalScreenState extends State<ArticalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.white,
        ),
        title: const TextWidget(
          name: 'NY Times Most Popular',
          fontSize: 20,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff45E3C2),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(
              padding: 5.0,
              name: 'Teaching in the pandemic:This is not not sustainable',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              padding: 5.0,
              name:
                  'Teacher Allan, I want to say thank you. Because I live in Taiwan and the USA, I joined the North Calgary ESL Conversation Group online last year around October until now.',
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    name: 'By Natash Singer',
                  ),
                  TextWidget(
                    name: '2020-11-30',
                  ),
                ],
              ),
            ),
            ImageWidget(),
            TextWidget(
              name: 'Source:New York Times',
            ),
            TextWidget(
              padding: 5.0,
              name:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
