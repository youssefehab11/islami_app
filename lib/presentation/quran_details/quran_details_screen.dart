import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/widgets/default_app_bar.dart';
import 'package:islami_app/core/widgets/loading.dart';
import 'package:islami_app/core/widgets/main_background.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/quran_details/widgets/quran_details_body.dart';

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> ayat = [];
  @override
  Widget build(BuildContext context) {
    SurahInfo surahInfo =
        ModalRoute.of(context)?.settings.arguments as SurahInfo;
    if (ayat.isEmpty) readFile(surahInfo.surahIndex);
    return MainBackground(
      child: Scaffold(
        appBar: const DefaultAppBar(),
        body: ayat.isEmpty ? const Loading() : QuranDetailsBody(surahInfo: surahInfo, ayat: ayat,)
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    ayat = fileContent.split('\n');
    setState(() {
      
    });
  }
}
