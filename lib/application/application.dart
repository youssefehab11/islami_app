import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_themes.dart';
import 'package:islami_app/core/router/route_manager.dart';
import 'package:islami_app/core/router/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: Routes.splashRoute,
       routes: RoutesManager.router,
       theme: AppThemes.lightTheme,
    );
  }

}