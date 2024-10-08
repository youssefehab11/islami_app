import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/widgets/quran_table_row_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      child: QuranTableRowItem(
        surahName: AppLocalizations.of(context)!.surahName,
        ayatNumbers: AppLocalizations.of(context)!.ayatNumbers,
        isTitle: true,
      ),
    );
  }
}
