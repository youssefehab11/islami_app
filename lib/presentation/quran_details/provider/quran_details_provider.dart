import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';

class QuranDetailsProvider extends ChangeNotifier {
  List<String> ayat = [];
  int ayaIndex = 0;

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    ayat = fileContent.split('\n');
    notifyListeners();
  }

  void onNextPressed(SurahInfo surahInfo) {
    if (ayaIndex < int.parse(surahInfo.ayatNumbers)) {
      ayaIndex++;
      notifyListeners();
    }
    
  }

  void onPreviousPressed() {
    if (ayaIndex > 0) {
        ayaIndex--;
        notifyListeners();
    }
  }
}