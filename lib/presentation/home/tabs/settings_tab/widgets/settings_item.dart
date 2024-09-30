import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/settings_tab/settings.dart';


typedef OnOptionsTap = Function(BuildContext context, List<OptionInfo> options);
class SettingsItem extends StatelessWidget {
  final String title;
  final String selectedOption;
  final List<OptionInfo> options;
  final OnOptionsTap onTap;
  const SettingsItem({
    super.key,
    required this.selectedOption,
    required this.title,
    required this.options,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        InkWell(
          onTap: () => onTap(context, options),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                selectedOption,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
