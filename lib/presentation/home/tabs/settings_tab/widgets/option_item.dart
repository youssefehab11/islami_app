import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings.dart';
import 'package:islami_app/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OptionItem extends StatelessWidget {
  final OptionInfo optionInfo;
  const OptionItem({super.key, required this.optionInfo});

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);
    return InkWell(
      onTap: () {
        if (optionInfo.configContolType == ConfigContolType.theme) {
          changeTheme(context, provider);
        } else if (optionInfo.configContolType == ConfigContolType.language) {
          changeLanguage(context, provider);
        }
      },
      borderRadius: optionInfo.isFirst
          ? const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              optionInfo.label,
              style: optionInfo.isSelected
                  ? Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Theme.of(context).primaryColor)
                  : Theme.of(context).textTheme.titleSmall,
            ),
            if (optionInfo.isSelected)
              Icon(
                Icons.check,
                color: Theme.of(context).primaryColor,
              )
          ],
        ),
      ),
    );
  }

  void changeTheme(BuildContext context, AppProvider provider) {
    optionInfo.label == AppLocalizations.of(context)!.lightOption
        ? provider.changeTheme(ThemeMode.light)
        : provider.changeTheme(ThemeMode.dark);
  }

  void changeLanguage(BuildContext context, AppProvider provider) {
    optionInfo.label == AppLocalizations.of(context)!.englishOption
        ? provider.changeLanguage('en')
        : provider.changeLanguage('ar');
  }
}
