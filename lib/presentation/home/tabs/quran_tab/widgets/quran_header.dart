import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/widgets/tab_header.dart';

class QuranHeader extends StatelessWidget {
  const QuranHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabHeader(imagePath: AssetsManager.quranHeader);
  }
}
