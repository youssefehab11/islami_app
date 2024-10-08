import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/provider/sebha_provider.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/widgets/sebha.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/widgets/zekr_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> zekrText = [
    AppLocalizations.of(context)!.allahAkbr,
    AppLocalizations.of(context)!.elhamdullah,
    AppLocalizations.of(context)!.subhanAllah,
  ];
  SebhaProvider provider = Provider.of<SebhaProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sebha(
            onTap: provider.onSebhaClick,
            tasbehatNumber: provider.tasbehatNumber,
          ),
          const SizedBox(
            height: 41,
          ),
          ZekrDetails(
            tasbehatNumber: provider.tasbehatNumber,
            currentZekr: provider.currentZekr,
            zekrText: zekrText,
          )
        ],
      ),
    );
  }
}
