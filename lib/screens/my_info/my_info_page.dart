import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/icon_container_Component.dart';
import 'component/text_button_container.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text("마이페이지"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.solidBell,
              color: Colors.grey[400],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 0.5,
              margin: EdgeInsets.only(bottom: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("홍길동", style: textTheme().titleLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          IconContainerComponent(
                            image: "face",
                            name: "프로필 정보",
                          ),
                          IconContainerComponent(
                            image: "ping",
                            name: "주소 관리",
                          ),
                          IconContainerComponent(
                            image: "card",
                            name: "카드 정보",
                          ),
                          IconContainerComponent(
                            image: "pencil",
                            name: "리뷰 관리",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        dashPattern: [6],
                        color: Colors.orange,
                        radius: Radius.circular(5),
                        child: Container(
                          color: Colors.orange[100],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "전담 의사료 간편하게 진료보세요.",
                                  style: textTheme().titleMedium,
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 0.5,
              margin: EdgeInsets.only(bottom: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              child: Column(children: [
                TextButtonContainer(title: "자주 하는 질문"),
                TextButtonContainer(title: "원격(FAX전송) 처방 조제 의무 약국 리스트"),
                TextButtonContainer(title: "가족 대리 접수 관리"),
                TextButtonContainer(title: "공지사항"),
                TextButtonContainer(title: "환경 설정"),
                TextButtonContainer(title: "약관 및 정책"),
                TextButtonContainer(title: "서비스문의"),
                TextButtonContainer(title: "버전 정보"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
