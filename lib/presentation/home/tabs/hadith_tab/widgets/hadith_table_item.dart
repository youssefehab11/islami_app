import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/widgets/hadith_table_body.dart';

class HadithTableItem extends StatelessWidget {
  final List<HadithInfo> allAhadith;
  final int hadithIndex;
  final VoidCallback onTap;
  const HadithTableItem({
    super.key,
    required this.allAhadith,
    required this.hadithIndex,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(
          allAhadith[hadithIndex].title,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
