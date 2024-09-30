import 'package:flutter/material.dart';

class HadithTlawaBody extends StatelessWidget {
  final String hadithBody;
  const HadithTlawaBody({super.key, required this.hadithBody});

  @override
  Widget build(BuildContext context) {
    return Text(
      hadithBody,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.right,
    );
  }
}
