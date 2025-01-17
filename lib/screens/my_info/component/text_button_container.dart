import 'package:flutter/material.dart';

import '../../../theme.dart';

class TextButtonContainer extends StatelessWidget {
  final String title;
  const TextButtonContainer({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textTheme().titleMedium,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
      ],
    );
  }
}
