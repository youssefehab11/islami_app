import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';

class SurahTlawaHead extends StatelessWidget {
  final SurahInfo surahInfo;
  const SurahTlawaHead({super.key, required this.surahInfo});

  @override
  Widget build(BuildContext context) {
    return Text(
      'سورة ${surahInfo.surahName}',
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
