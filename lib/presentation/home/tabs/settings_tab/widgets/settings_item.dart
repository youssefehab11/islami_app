import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final String label;
  final Function(BuildContext context) onTap;
  final String selectedItem;
  const SettingsItem({
    super.key,
    required this.label,
    required this.onTap,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: () => onTap(context),
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                selectedItem,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
