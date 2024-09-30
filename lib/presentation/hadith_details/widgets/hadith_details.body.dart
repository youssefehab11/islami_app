import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/tlawa_widget.dart';
import 'package:islami_app/presentation/hadith_details/widgets/hadith_tlawa_body.dart';
import 'package:islami_app/presentation/hadith_details/widgets/hadith_tlawa_head.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_body.dart';

class HadithDetailsBody extends StatelessWidget {
  final HadithInfo hadithInfo;
  const HadithDetailsBody({super.key, required this.hadithInfo});

  @override
  Widget build(BuildContext context) {
    return TlawaWidget(
      head: HadithTlawaHead(title: hadithInfo.title),
      body: HadithTlawaBody(hadithBody: hadithInfo.body,),
    );
  }
}
