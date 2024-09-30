import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/tlawa_widget.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/quran_details/widgets/surah_tlawa_body.dart';
import 'package:islami_app/presentation/quran_details/widgets/surah_tlawa_head.dart';

class TlawaSurah extends StatelessWidget {
  final SurahInfo surahInfo;
  final List<String> ayat;
  final int ayaIndex;
  const TlawaSurah({
    super.key,
    required this.surahInfo,
    required this.ayat,
    required this.ayaIndex,
  });

  @override
  Widget build(BuildContext context) {
    return TlawaWidget(
      head: SurahTlawaHead(surahInfo: surahInfo),
      body: SurahTlawaBody(
        ayat: ayat,
        currentAya: ayaIndex,
      ),
    );
  }
}
// Container(
//       height: MediaQuery.of(context).size.height * 0.75,
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColorLight,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: const [
//           BoxShadow(
//             spreadRadius: 0.1,
//             blurRadius: 5,
//             offset: Offset(1, 1),
//           ),
//         ],
//       ),
//       margin: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           SurahHead(surahInfo: surahInfo),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Divider(
//               color: Theme.of(context).primaryColor,
//               height: 1,
//             ),
//           ),
//           SurahBody(
//             ayat: ayat,
//             currentAya: ayaIndex,
//           )
//         ],
//       ),
//     );