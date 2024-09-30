import 'package:flutter/material.dart';

class TlawaHead extends StatelessWidget {
  final Widget child;
  const TlawaHead({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}
