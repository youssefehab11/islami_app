import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/quran_details/provider/quran_details_provider.dart';
import 'package:islami_app/presentation/quran_details/widgets/tlawa_controls.dart';
import 'package:islami_app/presentation/quran_details/widgets/tlawa_surah.dart';
import 'package:provider/provider.dart';

class QuranDetailsBody extends StatelessWidget {
  final SurahInfo surahInfo;
  final List<String> ayat;
  const QuranDetailsBody({
    super.key,
    required this.surahInfo,
    required this.ayat,
  });

  @override
  Widget build(BuildContext context) {
    QuranDetailsProvider provider = Provider.of<QuranDetailsProvider>(context);
    return Column(
      children: [
        TlawaSurah(
          surahInfo: surahInfo,
          ayat: ayat,
          ayaIndex: provider.ayaIndex,
        ),
        TlawaControls(
          onNextPressed: provider.onNextPressed,
          onPreviousPressed: provider.onPreviousPressed,
          ayaIndex: provider.ayaIndex,
          surahInfo: surahInfo,
        )
      ],
    );
  }
}
