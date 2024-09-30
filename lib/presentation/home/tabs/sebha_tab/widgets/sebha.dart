import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';

class Sebha extends StatelessWidget {
  final VoidCallback onTap;
  final int tasbehatNumber;
  const Sebha({super.key, required this.onTap, required this.tasbehatNumber});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      onTap: () => onTap(),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 208,
            left: 98,
            child: Image.asset(AssetsManager.sebhaHead),
          ),
          AnimatedRotation(
            turns: tasbehatNumber * 0.1 / 3.3,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: Image.asset(AssetsManager.sebhaBody),
          ),
        ],
      ),
    );
  }
}
