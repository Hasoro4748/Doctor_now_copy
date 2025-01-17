import 'package:flutter/material.dart';

import '../../theme.dart';

class WhiteScrollContainerComponent extends StatelessWidget {
  final Widget boxContent;

  const WhiteScrollContainerComponent({required this.boxContent, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
