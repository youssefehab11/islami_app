import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/widgets/default_app_bar.dart';
import 'package:islami_app/core/widgets/main_background.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/presentation/home/provider/home_provider.dart';
import 'package:islami_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider provider = Provider.of<HomeProvider>(context);
    List<Widget> tabs = [
      const QuranTab(),
      const HadithTab(),
      const SebhaTab(),
      const RadioTab(),
      const SettingsTab(),
    ];
    return MainBackground(
      child: Scaffold(
        appBar: const DefaultAppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage(AssetsManager.quranIcon)),
              label: AppLocalizations.of(context)!.quranIconLabel,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage(AssetsManager.hadithIcon)),
              label: AppLocalizations.of(context)!.hadithIconLabel,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
              label: AppLocalizations.of(context)!.sebhaIconLabel,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage(AssetsManager.radioIcon)),
              label: AppLocalizations.of(context)!.radioIconLabel,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settingsIconLabel,
            ),
          ],
          onTap: (index) {
            provider.changeTap(index);
          },
          currentIndex: provider.selectedIndex,
        ),
        body: tabs[provider.selectedIndex],
      ),
    );
  }
}
