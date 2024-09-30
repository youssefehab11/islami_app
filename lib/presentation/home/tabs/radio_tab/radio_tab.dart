import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/assets_manager.dart';
import 'package:islami_app/core/utils/strings_manager.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/widgets/ezaa_controls.dart';

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
          StringsManager.eazaaQuranKareem,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const EzaaControls(),
      ],
    );
  }
}
