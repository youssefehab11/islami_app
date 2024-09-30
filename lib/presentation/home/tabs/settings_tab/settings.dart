import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/strings_manager.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/widgets/option_item.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/widgets/settings_item.dart';

class SettingsTab extends StatelessWidget {
  SettingsTab({super.key});


  List<OptionInfo> themeOptions = [
    OptionInfo(optionLabel: StringsManager.lightOption, isSelected: true, isFirst: true),
    OptionInfo(optionLabel: StringsManager.darkOption, isSelected: false)
  ];
  List<OptionInfo> languageOptions = [
    OptionInfo(optionLabel: StringsManager.englishOption, isSelected: true, isFirst: true),
    OptionInfo(optionLabel: StringsManager.arabicOption, isSelected: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SettingsItem(
            onTap: showBottomSheetOptions,
            options: themeOptions,
            selectedOption: StringsManager.lightOption,
            title: StringsManager.themeTitle,
          ),
          const SizedBox(
            height: 20,
          ),
          SettingsItem(
            onTap: showBottomSheetOptions,
            options: languageOptions,
            selectedOption: StringsManager.englishOption,
            title: StringsManager.languageTitle,
          )
        ],
      ),
    );
  }

  void showBottomSheetOptions(BuildContext context, List<OptionInfo> options) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView.builder(
          itemCount: options.length,
          itemBuilder: (context, index) => OptionItem(optinInfo: options[index], onTap: (){}),
        );
      },
    );
  }
}

class OptionInfo {
  String optionLabel;
  bool isSelected;
  bool isFirst;
  OptionInfo({required this.optionLabel, required this.isSelected, this.isFirst = false});
}