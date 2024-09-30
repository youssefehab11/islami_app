import 'package:flutter/material.dart';

class TabHeader extends StatelessWidget {
  final String imagePath;
  const TabHeader({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(imagePath),
    );
  }
}
