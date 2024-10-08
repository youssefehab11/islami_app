import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/default_app_bar.dart';
import 'package:islami_app/core/widgets/loading.dart';
import 'package:islami_app/core/widgets/main_background.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/quran_details/provider/quran_details_provider.dart';
import 'package:islami_app/presentation/quran_details/widgets/quran_details_body.dart';
import 'package:provider/provider.dart';

class QuranDetailsScreen extends StatelessWidget {
  const QuranDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    QuranDetailsProvider provider = Provider.of<QuranDetailsProvider>(context);
    SurahInfo surahInfo =
        ModalRoute.of(context)?.settings.arguments as SurahInfo;
    if (provider.ayat.isEmpty) provider.readFile(surahInfo.surahIndex);
    return MainBackground(
      child: Scaffold(
        appBar: const DefaultAppBar(),
        body: provider.ayat.isEmpty
            ? const Loading()
            : QuranDetailsBody(
                surahInfo: surahInfo,
                ayat: provider.ayat,
              ),
      ),
    );
  }
}
