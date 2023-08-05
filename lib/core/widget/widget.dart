import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    this.image,
  });
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Container(
        width: double.infinity,
        height: 260,
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: NetworkImage(image!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    this.name,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.padding = 0.0,
  });
  final String? name;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Text(
        name!,
        maxLines: 2,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, this.icon, this.size, this.color});

  final IconData? icon;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}

class ArticleWidget extends StatelessWidget {
  const ArticleWidget(
      {super.key, this.title, this.byline, this.date, this.image});
  final String? title;
  final String? byline;
  final String? date;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(image!),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      byline!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconWidget(
                  icon: Icons.arrow_forward_ios,
                  size: 35,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconWidget(
                  icon: Icons.calendar_month,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                TextWidget(
                  name: date,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> appBarWidget = const [
  SizedBox(
    width: 5,
  ),
  IconWidget(
    icon: Icons.search,
    size: 25,
    color: Colors.white,
  ),
  SizedBox(
    width: 5,
  ),
  IconWidget(
    icon: Icons.more_vert,
    size: 25,
    color: Colors.white,
  ),
];
