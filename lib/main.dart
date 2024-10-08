import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/application/application.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const MyApp(),
    ),
  );
}