import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/core/widgets/loading.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/provider/hadith_provider.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_item.dart';
import 'package:provider/provider.dart';

class HadithTableBody extends StatelessWidget {
  const HadithTableBody({super.key});
  @override
  Widget build(BuildContext context) {
    HadithProvider provider = Provider.of<HadithProvider>(context);
    if (provider.allAhadith.isEmpty) provider.readFile();
    return Expanded(
      flex: 2,
      child: provider.allAhadith.isEmpty
          ? const Loading()
          : ListView.builder(
              itemBuilder: (context, index) => HadithTableItem(
                allAhadith: provider.allAhadith,
                hadithIndex: index,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.hadithDetailsRoute,
                    arguments: provider.allAhadith[index],
                  );
                },
              ),
              itemCount: provider.allAhadith.length,
            ),
    );
  }
}

class HadithInfo {
  String title;
  String body;
  HadithInfo({required this.title, required this.body});
}
