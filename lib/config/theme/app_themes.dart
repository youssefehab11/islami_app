import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/colors_manager.dart';
import 'package:islami_app/core/utils/fonts_manager.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,primaryContainer: ColorsManager.gold,),
    primaryColor:  ColorsManager.gold,
    primaryColorLight: Colors.white,
    scaffoldBackgroundColor: Colors.transparent,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
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
        fontFamily: FontsManager.elMessiri
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.gold,
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
        fontFamily: FontsManager.elMessiri,
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black
      ),
      bodySmall: TextStyle(
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


  static final ThemeData darkThem = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,primaryContainer: ColorsManager.darkBlue,),
    primaryColor: ColorsManager.yellow,
    primaryColorLight: ColorsManager.darkBlue,
    scaffoldBackgroundColor: Colors.transparent,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManager.darkBlue
    ),
    //useMaterial3: false,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarColor: Colors.transparent
      // ),
      shadowColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: FontsManager.elMessiri,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.darkBlue,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: ColorsManager.yellow,
        size: 36,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      showUnselectedLabels: false,
      selectedItemColor: Colors.yellow
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: FontsManager.elMessiri,
        color: Colors.white
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: ColorsManager.yellow
      ),
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: ColorsManager.yellow
      ),
      displayMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    ),
  );
}
