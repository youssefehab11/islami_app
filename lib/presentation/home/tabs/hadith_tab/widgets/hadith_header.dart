import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/widgets/tab_header.dart';

class HadithHeader extends StatelessWidget {
  const HadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabHeader(imagePath: AssetsManager.hadithHeader);
  }
}
