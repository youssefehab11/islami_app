import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_body.dart';

class HadithProvider extends ChangeNotifier {
  List<HadithInfo> allAhadith = [];
  void readFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/hadith/ahadeth.txt');
    List<HadithInfo> tempList = [];
    List<String> ahadith = fileContent
        .trim()
        .split('#')
        .where((hadith) => hadith.trim().isNotEmpty)
        .toList();
    for (String hadith in ahadith) {
      List<String> hadithLines = hadith.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String body = hadithLines.join('\n').trim();
      tempList.add(HadithInfo(title: title, body: body));
    }
    allAhadith = tempList;
    notifyListeners();
  }
}
