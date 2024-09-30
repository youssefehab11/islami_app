import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/strings_manager.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(StringsManager.appTitle),
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}