import 'package:flutter/material.dart';

class GreyTxt extends StatelessWidget {
  String label;
  GreyTxt({required this.label,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context).textTheme.displaySmall

    );
  }
}
