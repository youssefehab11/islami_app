import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_header.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_body.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_title.dart';

class HadithTab extends StatelessWidget{
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HadithHeader(),
        HadithTableTitle(),
        HadithTableBody()
      ],
    );
  }
  
}