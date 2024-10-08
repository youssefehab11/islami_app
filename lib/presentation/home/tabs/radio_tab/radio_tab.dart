import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/utils/fonts_manager.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/widgets/ezaa_controls.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsManager.radioImage),
        const SizedBox(height: 55,),
        Text(
          AppLocalizations.of(context)!.ezaaQuranKareem,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontFamily: FontsManager.elMessiri),
        ),
        const EzaaControls(),
      ],
    );
  }
}
