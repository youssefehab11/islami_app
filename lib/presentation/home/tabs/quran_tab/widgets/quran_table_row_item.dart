import 'package:flutter/material.dart';

class QuranTableRowItem extends StatelessWidget {
  final String surahName;
  final String ayatNumbers;
  final bool isTitle;
  final VoidCallback? onTap;
  const QuranTableRowItem(
      {super.key,
      required this.surahName,
      required this.ayatNumbers,
      this.onTap,
      this.isTitle = false});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: onTap != null ? () => onTap?.call() : null,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(surahName,
                    textAlign: TextAlign.center,
                    style: isTitle
                        ? Theme.of(context).textTheme.titleMedium
                        : Theme.of(context).textTheme.titleSmall),
              ),
            ),
            Expanded(
              child: VerticalDivider(
                thickness: 2,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  ayatNumbers,
                  textAlign: TextAlign.center,
                  style: isTitle
                      ? Theme.of(context).textTheme.titleMedium
                      : Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
