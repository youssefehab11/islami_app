import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings.dart';

class OptionItem extends StatelessWidget {
  final OptionInfo optinInfo;
  final VoidCallback onTap;
  const OptionItem({
    super.key,
    required this.optinInfo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: optinInfo.isFirst
          ? const BorderRadius.vertical(top: Radius.circular(25))
          : null,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              optinInfo.optionLabel,
              style: optinInfo.isSelected
                  ? Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                      )
                  : Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 22,
                      ),
            ),
            if (optinInfo.isSelected)
              Icon(
                Icons.check,
                color: Theme.of(context).primaryColor,
              ),
          ],
        ),
      ),
    );
  }
}
