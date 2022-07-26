import 'package:flutter/material.dart';

class MyThemeData {
  static Color standardColor = const Color(0xFFB7935F);
  static Color blackColor = const Color(0xFF242424);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: standardColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
  );

  static final ThemeData darkTheme = ThemeData();
}
