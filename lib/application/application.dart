import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_themes.dart';
import 'package:islami_app/core/router/route_manager.dart';
import 'package:islami_app/core/router/routes.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);
    return MaterialApp(
      initialRoute: Routes.splashRoute,
      routes: RoutesManager.router,
      locale: Locale(provider.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkThem,
      themeMode: provider.currentTheme == ThemeMode.light
          ? ThemeMode.light
          : ThemeMode.dark,
    );
  }
}
