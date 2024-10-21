import 'package:flutter/material.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/presentation/hadith_details/hadith_details_screen.dart';
import 'package:islami_app/presentation/home/home_screen.dart';
import 'package:islami_app/presentation/home/provider/home_provider.dart';
import 'package:islami_app/presentation/quran_details/quran_details_screen.dart';
import 'package:islami_app/presentation/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class RoutesManager {
  static Map<String, Widget Function(BuildContext)> router = {
    Routes.splashRoute: (_) => const SplashScreen(),
    Routes.homeRoute: (_) => ChangeNotifierProvider(
          create: (context) => HomeProvider(),
          child: const HomeScreen(),
        ),
    Routes.quranDetailsRoute: (_) => const QuranDetailsScreen(),
    Routes.hadithDetailsRoute: (_) => const HadithDetailsScreen(),
  };
}
