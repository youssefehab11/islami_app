import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/colors_manager.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    primaryColorLight: Colors.white,
    scaffoldBackgroundColor: Colors.transparent,
    //useMaterial3: false,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarColor: Colors.transparent
      // ),
      shadowColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.primaryGold,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 36,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      showUnselectedLabels: false,
      selectedItemColor: Colors.black
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black
      ),
      displayMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    ),
  );
}
