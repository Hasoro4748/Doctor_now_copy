import 'package:flutter/material.dart';
import 'package:flutter_practice/theme.dart';

class IconContainerComponent extends StatelessWidget {
  final String name;
  final String image;
  const IconContainerComponent(
      {required this.name, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          child: Column(
            children: [
              Image.asset(
                "assets/images/" + image + ".png",
                width: 50,
                height: 50,
              ),
              const SizedBox(height: 5),
              Text(
                name,
                style: textTheme().titleMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
