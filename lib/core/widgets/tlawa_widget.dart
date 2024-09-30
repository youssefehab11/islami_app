import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/tlawa_body.dart';
import 'package:islami_app/core/widgets/tlawa_head.dart';

class TlawaWidget extends StatelessWidget {
  final Widget head;
  final Widget body;
  const TlawaWidget({
    super.key,
    required this.head,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0.1,
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TlawaHead(child: head,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
          ),
          TlawaBody(child: body,),
        ],
      ),
    );
  }
}
