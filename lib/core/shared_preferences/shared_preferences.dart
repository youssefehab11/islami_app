import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static late SharedPreferences sharedPreferences;
  static Future<SharedPreferences> init() async{
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  }
  static Future<bool> saveTheme({
    required String key,
    required ThemeMode value
  })async{
    if(value == ThemeMode.light){
      return sharedPreferences.setBool('Theme', true);
    }
    else{
      return sharedPreferences.setBool('Theme', false);
    }
  }

  static bool? getBool({required String key}){
    return sharedPreferences.getBool(key);
  }

  static Future<bool> saveString({
    required String key,
    required String value
  })async{
     return await sharedPreferences.setString(key, value);
  }

  static String? getString({required String key}){
    return sharedPreferences.getString(key);
  }
}