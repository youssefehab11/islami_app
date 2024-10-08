import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/fonts_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ZekrDetails extends StatelessWidget {
  final int tasbehatNumber;
  final List<String> zekrText;
  final int currentZekr;
  const ZekrDetails({
    super.key,
    required this.tasbehatNumber,
    required this.currentZekr,
    required this.zekrText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.tasbehatNumber,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontFamily: FontsManager.elMessiri),
        ),
        const SizedBox(
          height: 34,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context)
                .colorScheme
                .primaryContainer
                .withOpacity(0.57),
          ),
          child: Text(
            '$tasbehatNumber',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).primaryColor),
          child: Text(
            zekrText[currentZekr],
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ],
    );
  }
}
