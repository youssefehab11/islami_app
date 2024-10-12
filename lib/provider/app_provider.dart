import 'package:flutter/material.dart';
import 'package:islami_app/core/shared_preferences/shared_preferences.dart';

class AppProvider with ChangeNotifier {
  ThemeMode currentTheme = AppSharedPreferences.getBool(key: 'Theme') == true ? ThemeMode.light: ThemeMode.dark;
  String currentLanguage = AppSharedPreferences.getString(key: 'Language') ?? 'en';
  
  void changeTheme(ThemeMode newTheme){
    if(currentTheme != newTheme){
      currentTheme = newTheme;
      AppSharedPreferences.saveTheme(key: 'Theme', value: newTheme);
      notifyListeners();
    }
  }

  void changeLanguage(String newLanguage){
    if(currentLanguage != newLanguage){
      currentLanguage = newLanguage;
      AppSharedPreferences.saveString(key: 'Language', value: newLanguage);
      notifyListeners();
    }
  }
}