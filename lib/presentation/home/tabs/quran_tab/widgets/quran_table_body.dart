import 'package:flutter/material.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/widgets/quran_table_row_item.dart';

class QuranTableBody extends StatelessWidget {
  final List<String> suraNames;
  final List<int> ayatNumbers;
  const QuranTableBody({
    super.key,
    required this.suraNames,
    required this.ayatNumbers,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        itemCount: suraNames.length,
        itemBuilder: (context, index) {
          SurahInfo surahInfo = SurahInfo(
            surahName: suraNames[index],
            ayatNumbers: ayatNumbers[index].toString(),
            surahIndex: index,
          );
          return QuranTableRowItem(
            surahName: surahInfo.surahName,
            ayatNumbers: surahInfo.ayatNumbers,
            onTap: () => Navigator.pushNamed(
              context,
              Routes.quranDetailsRoute,
              arguments: surahInfo,
            ),
          );
        },
      ),
    );
  }
}
