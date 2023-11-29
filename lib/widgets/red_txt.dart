import 'package:flutter/material.dart';

class RedTxt extends StatelessWidget {
  String label;
  RedTxt({required this.label,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        label,
        style: Theme.of(context).textTheme.headlineSmall

    );
  }
}
