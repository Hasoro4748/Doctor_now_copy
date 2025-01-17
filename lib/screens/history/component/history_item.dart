import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../component/white_box_container_component.dart';

class HistoryItem extends StatelessWidget {
  final String title;
  final String type;
  final String imageType;
  final bool canceled;
  final String doctorName;
  final String doctorType;

  const HistoryItem(
      {required this.title,
      required this.type,
      required this.imageType,
      required this.canceled,
      required this.doctorName,
      required this.doctorType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteBoxContainerComponent(
      boxContent: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textTheme().bodySmall,
              ),
              Icon(
                Icons.close,
                color: Colors.grey[400],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/" + imageType + ".png",
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 16),
              Text(
                type,
                style: textTheme().titleLarge,
              ),
            ],
          ),
          Visibility(
            visible: canceled == true,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "상담이 취소되었어요.",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4)),
                width: 8,
                height: 40,
              ),
              const SizedBox(width: 10),
              Text(
                doctorName,
                style: textTheme().titleMedium,
              ),
              const SizedBox(width: 5),
              Text(
                doctorType,
                style: textTheme().titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
