import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/provider/hadith_provider.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_header.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_body.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_title.dart';
import 'package:provider/provider.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const HadithHeader(),
        const HadithTableTitle(),
        ChangeNotifierProvider(
          create: (context) => HadithProvider(),
          child: const HadithTableBody(),
        )
      ],
    );
  }
}
