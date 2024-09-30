import 'package:flutter/material.dart';

class TlawaBody extends StatelessWidget {
  final Widget child;
  const TlawaBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: child,
      ),
    );
  }
}
