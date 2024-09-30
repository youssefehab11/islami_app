import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback onPressed;
  const ButtonControl({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: Icon(
        icon,
        size: size,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
