import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/utils/strings_manager.dart';
import 'package:islami_app/core/widgets/default_app_bar.dart';
import 'package:islami_app/core/widgets/main_background.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<BottomNavigationBarItem> bottomNavigationBarItems = const [
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
        label: StringsManager.quranIconLabel),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
        label: StringsManager.hadithIconLabel),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
        label: StringsManager.sebhaIconLabel),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
        label: StringsManager.radioIconLabel),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: StringsManager.settingsIconLabel),
  ];

  int selectedIndex = 0;
  final List<Widget> tabs =  [
    const QuranTab(),
    const HadithTab(),
    const SebhaTab(),
    const RadioTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return MainBackground(
      child: Scaffold(
        appBar: const DefaultAppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavigationBarItems,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
