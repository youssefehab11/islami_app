import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/strings_manager.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/widgets/quran_table_row_item.dart';

class QuranTableTitle extends StatelessWidget {
  const QuranTableTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      child: const QuranTableRowItem(
        surahName: StringsManager.surahName,
        ayatNumbers: StringsManager.ayatNumbers,
        isTitle: true,
      ),
    );
  }
}
