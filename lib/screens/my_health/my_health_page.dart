import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/component/white_box_container_component.dart';
import 'package:flutter_practice/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHealthPage extends StatelessWidget {
  const MyHealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          forceMaterialTransparency: true,
          title: Text(
            "내 건강",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                WhiteBoxContainerComponent(
                  boxContent: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("현재 걸음 수"),
                              Row(
                                children: [
                                  Text(
                                    "1868",
                                    style: textTheme().titleLarge,
                                  ),
                                  const SizedBox(width: 5),
                                  Text("걸음"),
                                ],
                              )
                            ],
                          ),
                          Image.asset(
                            "assets/images/running.png",
                            width: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("현재 걸음 수로\n 120 칼로리를 태웠어요."),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
