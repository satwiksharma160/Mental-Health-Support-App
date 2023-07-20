import 'package:flutter/material.dart';
import '../constants.dart';

class CrisisButton extends StatelessWidget {
  final VoidCallback onClicFunc;

  const CrisisButton({Key? key, required this.onClicFunc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onClicFunc,
        backgroundColor: kSlightlyMoreAgressive,
        child: const Icon(Icons.add_alert_outlined));
  }
}
