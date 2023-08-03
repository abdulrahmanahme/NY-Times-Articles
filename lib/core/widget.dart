import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: NetworkImage(
                'https://cdn1-m.alittihad.ae/store/archive/image/2022/1/7/99f9b456-2e7c-42a9-96e2-73bd35185590.jpg'),
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

class ArtivalWidget extends StatelessWidget {
  const ArtivalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: const CircleAvatar(
                  radius: 35,
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    name: 'The childern of pornhub',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    name: 'By Nichoals kristof',
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconWidget(
                  icon: Icons.arrow_forward_ios,
                  size: 30,
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
                const TextWidget(
                  name: '2020-14-04',
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
List<Widget>appBarWidget=const[
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

