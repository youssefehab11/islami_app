import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';

class Sebha extends StatelessWidget {
  final VoidCallback onTap;
  final int tasbehatNumber;
  const Sebha({super.key, required this.onTap, required this.tasbehatNumber});

  @override
  Widget build(BuildContext context) {
    //SebhaProvider sebhaProvider = Provider.of<SebhaProvider>(context);
    AppProvider appProvider = Provider.of<AppProvider>(context);
    return InkWell(
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      onTap: () => onTap(),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 208,
            left: 98,
            child: appProvider.currentTheme == ThemeMode.light
                ? Image.asset(AssetsManager.sebhaHeadLight)
                : Image.asset(AssetsManager.sebhaHeadDark),
          ),
          AnimatedRotation(
            turns: tasbehatNumber * 0.1 / 3.3,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: appProvider.currentTheme == ThemeMode.light
                ? Image.asset(AssetsManager.sebhaBodyLight)
                : Image.asset(AssetsManager.sebhaBodyDark),
          ),
        ],
      ),
    );
  }
}
