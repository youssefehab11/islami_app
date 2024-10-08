import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';
  
  void changeTheme(ThemeMode newTheme){
    if(currentTheme != newTheme){
      currentTheme = newTheme;
      notifyListeners();
    }
  }

  void changeLanguage(String newLanguage){
    if(currentLanguage != newLanguage){
      currentLanguage = newLanguage;
      notifyListeners();
    }
  }
}