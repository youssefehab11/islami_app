import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier {
  int tasbehatNumber = 0;
  int currentZekr = 0;
  
  void onSebhaClick() {
    if (tasbehatNumber < 32) {
      tasbehatNumber++;
    } else if (currentZekr < 2) {
      currentZekr++;
      tasbehatNumber = 0;
    } else {
      currentZekr = 0;
      tasbehatNumber = 0;
    }
    notifyListeners();
  }
}