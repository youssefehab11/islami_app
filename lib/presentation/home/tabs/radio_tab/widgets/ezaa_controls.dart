import 'package:flutter/material.dart';
import 'package:islami_app/presentation/home/tabs/radio_tab/widgets/button_control.dart';

class EzaaControls extends StatelessWidget {
  const EzaaControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.ltr,
        children: [
          ButtonControl(
            icon: Icons.skip_previous,
            onPressed: () {},
            size: 40,
          ),
          ButtonControl(
            icon: Icons.play_arrow,
            onPressed: () {},
            size: 60,
          ),
          ButtonControl(
            icon: Icons.skip_next,
            onPressed: () {},
            size: 40,
          )
        ],
      ),
    );
  }
}
