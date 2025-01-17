import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme.dart';
import '../component/white_box_container_component.dart';
import 'component/history_item.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("진료 내역"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              HistoryItem(
                title: "2022.07.02 (토) 23:18 디자이너스 (배우자)",
                imageType: "heart",
                type: "심리상담",
                canceled: true,
                doctorName: "홍길동 상담사",
                doctorType: "코헬렛 카운슬링",
              ),
              HistoryItem(
                title: "2022.03.12 (토) 16:36 이순신 (본인)",
                imageType: "corona",
                type: "코로나 치료",
                canceled: false,
                doctorName: "홍길동 의사",
                doctorType: "우리가정의학과",
              ),
              HistoryItem(
                title: "2022.03.12 (토) 16:36 이순신 (본인)",
                imageType: "corona",
                type: "코로나 치료",
                canceled: true,
                doctorName: "홍길동 의사",
                doctorType: "보강연합의원",
              ),
              HistoryItem(
                title: "2022.07.02 (토) 23:18 디자이너스 (배우자)",
                imageType: "heart",
                type: "심리상담",
                canceled: true,
                doctorName: "홍길동 상담사",
                doctorType: "코헬렛 카운슬링",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
