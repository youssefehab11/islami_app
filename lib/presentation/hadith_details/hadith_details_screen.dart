import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/default_app_bar.dart';
import 'package:islami_app/core/widgets/main_background.dart';
import 'package:islami_app/presentation/hadith_details/widgets/hadith_details.body.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_body.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithInfo hadithInfo = ModalRoute.of(context)?.settings.arguments as HadithInfo;
    return MainBackground(
      child: Scaffold(
        appBar: const DefaultAppBar(),
        body: HadithDetailsBody(hadithInfo: hadithInfo,),
      ),
    );
  }
}
