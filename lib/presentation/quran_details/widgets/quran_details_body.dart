import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/quran_details/widgets/tlawa_controls.dart';
import 'package:islami_app/presentation/quran_details/widgets/tlawa_surah.dart';

class QuranDetailsBody extends StatefulWidget {
  final SurahInfo surahInfo;
  final List<String> ayat;
  const QuranDetailsBody({
    super.key,
    required this.surahInfo,
    required this.ayat,
  });

  @override
  State<QuranDetailsBody> createState() => _QuranDetailsBodyState();
}

class _QuranDetailsBodyState extends State<QuranDetailsBody> {
  int ayaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TlawaSurah(
          surahInfo: widget.surahInfo,
          ayat: widget.ayat,
          ayaIndex: ayaIndex,
        ),
        TlawaControls(
          onNextPressed: onNextPressed,
          onPreviousPressed: onPreviousPressed,
          ayaIndex: ayaIndex,
          surahInfo: widget.surahInfo,
        )
      ],
    );
  }

  void onNextPressed() {
    if (ayaIndex < int.parse(widget.surahInfo.ayatNumbers)) {
      setState(() {
        ayaIndex++;
      });
    }
  }

  void onPreviousPressed() {
    if (ayaIndex > 0) {
      setState(() {
        ayaIndex--;
      });
    }
  }
}
