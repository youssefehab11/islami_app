import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int selectedIndex = 0;
  void changeTap(int index){
    selectedIndex = index;
    notifyListeners();
  }
}