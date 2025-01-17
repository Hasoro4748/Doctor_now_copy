import 'package:flutter/material.dart';

import '../../theme.dart';

class WhiteBoxContainerComponent extends StatelessWidget {
  final Widget boxContent;

  const WhiteBoxContainerComponent({required this.boxContent, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: boxContent,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
