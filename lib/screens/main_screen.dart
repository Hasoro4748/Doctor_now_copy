import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home/home_page.dart';
import 'my_health/my_health_page.dart';
import 'my_info/my_info_page.dart';
import 'history/history_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void changeStackPages(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            MyHealthPage(),
            HistoryPage(),
            MyInfoPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            changeStackPages(index);
          },
          items: [
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '내 건강',
              icon: Icon(FontAwesomeIcons.heartPulse),
            ),
            BottomNavigationBarItem(
              label: '진료 내역',
              icon: Icon(FontAwesomeIcons.solidFileLines),
            ),
            BottomNavigationBarItem(
              label: '마이페이지',
              icon: Icon(CupertinoIcons.person_crop_circle_fill),
            ),
          ],
        ),
      ),
    );
  }
}
