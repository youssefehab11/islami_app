import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';

class MainBackground extends StatelessWidget {
  final Widget child;
  const MainBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsManager.mainBgLight))
      ),
      child: child,
    );
  }
}