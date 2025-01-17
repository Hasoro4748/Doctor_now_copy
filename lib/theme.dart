// 텍스트 테마
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    // 가장 큰 제목 스타일
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // 중간 크기의 제목 스타일
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // 본문 텍스트 스타일 (기사, 설명)
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // 부제목, 작은 본문 텍스트 스타일
    bodyMedium: GoogleFonts.openSans(
        fontSize: 14.0, color: Colors.grey[600], fontWeight: FontWeight.bold),
    bodySmall: GoogleFonts.openSans(
        fontSize: 14.0, color: Colors.grey[600], fontWeight: FontWeight.normal),
    // 중간 크기의 제목 스타일
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
    titleLarge: GoogleFonts.openSans(
        fontSize: 23.0, color: Colors.black, fontWeight: FontWeight.bold),
  );
}

// AppBar 테마 설정
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    titleTextStyle: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey[700] // 앱바 제목 텍스트 색상
        ),
  );
}

// 바텀네비게이션바 테마 설정
BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    selectedItemColor: Colors.black, // 선택된 아이템 색상
    unselectedItemColor: Colors.grey[400], // 선택되지 않은 아이템 색상
    showUnselectedLabels: true, // 선택 안된 라벨 표시 여부 설정
  );
}

// 전체 ThemeData 설정
ThemeData mTheme() {
  return ThemeData(
    // 머터리얼 3 때부터 변경 됨..
    // 자동 셋팅
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)
    // 우리가 직접 지정 함
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.grey,
    ),
    scaffoldBackgroundColor: Colors.grey[200],
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
