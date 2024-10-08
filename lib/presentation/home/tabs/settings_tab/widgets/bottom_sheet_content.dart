import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/widgets/option_item.dart';


class BottomSheetContent extends StatelessWidget {
  final OptionInfo firstOption;
  final OptionInfo secondOption;
  const BottomSheetContent({
    super.key,
    required this.firstOption,
    required this.secondOption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OptionItem(
          optionInfo: firstOption
        ),
        OptionItem(
          optionInfo: secondOption
        )
      ],
    );
  }
}
