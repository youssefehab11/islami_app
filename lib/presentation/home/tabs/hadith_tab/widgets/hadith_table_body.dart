import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/core/widgets/loading.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_item.dart';

class HadithTableBody extends StatefulWidget {
  const HadithTableBody({super.key});

  @override
  State<HadithTableBody> createState() => _HadithTableBodyState();
}

class _HadithTableBodyState extends State<HadithTableBody> {
  List<HadithInfo> allAhadith = [];
  @override
  Widget build(BuildContext context) {
    if (allAhadith.isEmpty) readFile();
    return Expanded(
      flex: 2,
      child: allAhadith.isEmpty
          ? const Loading()
          : ListView.builder(
              itemBuilder: (context, index) => HadithTableItem(
                allAhadith: allAhadith,
                hadithIndex: index,
                onTap: (){
                  Navigator.pushNamed(context, Routes.hadithDetailsRoute, arguments: allAhadith[index]);
                },
              ),
              itemCount: allAhadith.length,
            ),
    );
  }

  void readFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/hadith/ahadeth.txt');
    List<HadithInfo> tempList = [];
    List<String> ahadith = fileContent.trim().split('#').where((hadith) => hadith.trim().isNotEmpty).toList();
    for (String hadith in ahadith) {
      List<String> hadithLines = hadith.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String body = hadithLines.join('\n').trim();
      tempList.add(HadithInfo(title: title, body: body));
    }
    setState(() {
      allAhadith = tempList;
    });
  }
}

class HadithInfo {
  String title;
  String body;
  HadithInfo({required this.title, required this.body});
}
