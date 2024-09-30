import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/strings_manager.dart';

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
          StringsManager.tasbehatNumber,
          style: Theme.of(context).textTheme.titleSmall,
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
          padding: const EdgeInsets.all(8),
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
