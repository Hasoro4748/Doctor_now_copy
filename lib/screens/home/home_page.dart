import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme.dart';
import '../component/icon_container_Component.dart';
import '../component/white_box_container_component.dart';
import '../component/white_scroll_container_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text("약 배송 주소 설정"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              WhiteBoxContainerComponent(
                boxContent: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange[100]),
                      child:
                          Icon(Icons.help, color: Colors.orange[300], size: 35),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "무엇이든 물어보세요.",
                          style: textTheme().displayMedium,
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "5분 안에 전문 의료인이 답변해드려요.",
                          style: textTheme().bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              WhiteScrollContainerComponent(
                boxContent: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "증상 진료",
                            style: textTheme().displayMedium,
                          ),
                          Text("전체보기"),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          IconContainerComponent(name: "감기", image: "cold"),
                          IconContainerComponent(name: "여드름/피부염", image: "ich"),
                          IconContainerComponent(
                              name: "코로나 치료", image: "corona"),
                          IconContainerComponent(name: "심리치료", image: "heart"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              WhiteScrollContainerComponent(
                boxContent: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "과목 진료",
                            style: textTheme().displayMedium,
                          ),
                          Text("전체보기"),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          IconContainerComponent(name: "피부과", image: "pack"),
                          IconContainerComponent(name: "산부인과", image: "umbral"),
                          IconContainerComponent(name: "내과", image: "lung"),
                          IconContainerComponent(name: "소아청소년과", image: "face"),
                          IconContainerComponent(name: "심장", image: "heart"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              WhiteBoxContainerComponent(
                boxContent: Row(
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/heart.png")),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "심리상담",
                          style: textTheme().displayMedium,
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "전문가와 함께하는 고민상담",
                          style: textTheme().bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteBoxContainerComponent(
                    boxContent: Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset("assets/images/hospital.png")),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "방문가능한",
                              style: textTheme().displayMedium,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "병원 약국 찾기",
                              style: textTheme().bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  WhiteBoxContainerComponent(
                    boxContent: Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset("assets/images/box.png")),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "위치에 따라",
                              style: textTheme().displayMedium,
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "약 받는 방법",
                              style: textTheme().bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    "assets/images/ad1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Text(
                    "(주)닥터나우 사업자 정보",
                    style: textTheme().displayMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "주식회사 닥터나우 대표 장지호\n"
                    "사업자 등록 번호 : 279-88-01452 사업자 정보\n"
                    "통신판매업 신고번호 : 제 2022-서울강남-02476\n"
                    "서울특별시 강남구 테헤란로 501\n"
                    "701,711,712호 (삼성동, 브이플렉스)\n"
                    "대표전화 : 1670-5620",
                    textAlign: TextAlign.center,
                    style: textTheme().bodySmall,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
