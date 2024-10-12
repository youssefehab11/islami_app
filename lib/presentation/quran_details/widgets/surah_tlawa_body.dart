import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/utils/helper_functions.dart';

class SurahTlawaBody extends StatelessWidget {
  final List<String> ayat;
  final int currentAya;
  const SurahTlawaBody({
    super.key,
    required this.ayat,
    required this.currentAya,
  });

  @override
  Widget build(BuildContext context) {
    String ayaArabicNum = HelperFunctions.convertNumToArabic(currentAya + 1);
    return RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
        text: ayat[currentAya],
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AssetsManager.ayaIcon,
                  width: 45,
                  height: 45,
                ),
                Text(
                  ayaArabicNum,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  

  
}
