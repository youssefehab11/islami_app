import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/widgets/bottom_sheet_content.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/widgets/settings_item.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingsItem(
            label: AppLocalizations.of(context)!.themeTitle,
            onTap: showThemeBottomSheet,
            selectedItem: provider.currentTheme == ThemeMode.light
                ? AppLocalizations.of(context)!.lightOption
                : AppLocalizations.of(context)!.darkOption,
          ),
          SettingsItem(
            label: AppLocalizations.of(context)!.languageTitle,
            onTap: showLanguageBottomSheet,
            selectedItem: provider.currentLanguage == 'en'
                ? AppLocalizations.of(context)!.englishOption
                : AppLocalizations.of(context)!.arabicOption,
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        AppProvider provider = Provider.of<AppProvider>(context);
        return BottomSheetContent(
          firstOption: OptionInfo(
              label: AppLocalizations.of(context)!.lightOption,
              configContolType: ConfigContolType.theme,
              isSelected:
                  provider.currentTheme == ThemeMode.light ? true : false,
              isFirst: true),
          secondOption: OptionInfo(
            label: AppLocalizations.of(context)!.darkOption,
            configContolType: ConfigContolType.theme,
            isSelected: provider.currentTheme == ThemeMode.dark ? true : false,
          ),
        );
      },
    );
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      AppProvider provider = Provider.of<AppProvider>(context);
      return BottomSheetContent(
        firstOption: OptionInfo(
          label: AppLocalizations.of(context)!.englishOption,
          configContolType: ConfigContolType.language,
          isSelected: provider.currentLanguage == 'en' ? true : false,
          isFirst: true,
        ),
        secondOption: OptionInfo(
          label: AppLocalizations.of(context)!.arabicOption,
          configContolType: ConfigContolType.language,
          isSelected: provider.currentLanguage == 'ar' ? true : false,
        ),
      );
    },
  );
}

class OptionInfo {
  String label;
  bool isSelected;
  bool isFirst;
  ConfigContolType configContolType;
  OptionInfo({
    required this.label,
    required this.configContolType,
    required this.isSelected,
    this.isFirst = false,
  });
}

enum ConfigContolType {
  theme,
  language,
}
