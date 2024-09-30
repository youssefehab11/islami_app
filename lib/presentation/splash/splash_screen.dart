import 'package:flutter/material.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/core/utils/assets_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, Routes.homeRoute);
    });
    return Scaffold(
      body: Image.asset(
        AssetsManager.splashImageLight,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
