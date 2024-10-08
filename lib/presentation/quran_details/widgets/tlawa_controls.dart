import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';

typedef OnNextButtonPressed = Function(SurahInfo surahInfo);

class TlawaControls extends StatelessWidget {
  final OnNextButtonPressed onNextPressed;
  final VoidCallback onPreviousPressed;
  final int ayaIndex;
  final SurahInfo surahInfo;
  const TlawaControls({
    super.key,
    required this.onNextPressed,
    required this.onPreviousPressed,
    required this.ayaIndex,
    required this.surahInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton.filled(
            onPressed: ayaIndex == 0 ? null : () => onPreviousPressed(),
            style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor),
            iconSize: 36,
            icon: const Icon(
              Icons.arrow_left,
            ),
          ),
          Text('${ayaIndex + 1} / ${surahInfo.ayatNumbers}', style: Theme.of(context).textTheme.titleSmall,),
          IconButton.filled(
            
            onPressed: int.parse(surahInfo.ayatNumbers) -1 == ayaIndex ? null : () => onNextPressed(surahInfo),
            style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor),
            iconSize: 36,
            icon: const Icon(
              Icons.arrow_right,
            ),
          )
        ],
      ),
    );
  }
}
