import 'package:flutter/material.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);
    Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, Routes.homeRoute);
      }
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: provider.currentTheme == ThemeMode.light
              ? const AssetImage(AssetsManager.splashImageLight)
              : const AssetImage(AssetsManager.splashImageDark),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
