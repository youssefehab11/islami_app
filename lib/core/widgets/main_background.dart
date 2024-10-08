import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';

class MainBackground extends StatelessWidget {
  final Widget child;
  const MainBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: provider.currentTheme == ThemeMode.light
              ? const AssetImage(AssetsManager.mainBgLight)
              : const AssetImage(AssetsManager.mainBgDark),
        ),
      ),
      child: child,
    );
  }
}
