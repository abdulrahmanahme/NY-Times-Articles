import 'package:artical/core/widget/widget.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen(
      {super.key,
      this.title,
      this.abstractBrief,
      this.byline,
      this.article,
      this.date,
      this.source,
      this.image});
  final String? title;
  final String? abstractBrief;
  final String? byline;
  final String? date;
  final String? source;
  final String? article;
  final String? image;

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const TextWidget(
          name: 'NY Times Most Popular',
          fontSize: 20,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff45E3C2),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(
              padding: 5.0,
              name: widget.title,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              padding: 5.0,
              name: widget.abstractBrief,
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextWidget(
                      name: widget.byline,
                    ),
                  ),
                  TextWidget(
                    name: widget.date,
                  ),
                ],
              ),
            ),
            ImageWidget(
              image: widget.image,
            ),
            TextWidget(
              name: "source: ${widget.source}",
            ),
            TextWidget(
              padding: 5.0,
              name: widget.article,
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
