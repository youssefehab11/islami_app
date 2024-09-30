import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/strings_manager.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/widgets/sebha.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/widgets/zekr_details.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehatNumber = 0;
  List<String> zekrText = [StringsManager.allahAkbr, StringsManager.elhamdullah, StringsManager.subhanAllah];
  int currentZekr = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sebha(
            onTap: onSebhaClick,
            tasbehatNumber: tasbehatNumber,
          ),
          const SizedBox(
            height: 41,
          ),
          ZekrDetails(
            tasbehatNumber: tasbehatNumber,
            currentZekr: currentZekr,
            zekrText: zekrText,
          )
        ],
      ),
    );
  }

  void onSebhaClick() {
    if (tasbehatNumber < 32) {
      tasbehatNumber++;
    } else if (currentZekr < 2) {
      currentZekr++;
      tasbehatNumber = 0;
    } else {
      currentZekr = 0;
      tasbehatNumber = 0;
    }
    setState(() {});
  }
}
