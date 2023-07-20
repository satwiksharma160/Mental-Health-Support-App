import 'package:flutter/material.dart';

class PillComponent extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color PillColor;
  // ignore: non_constant_identifier_names
  final String PillText;

  // ignore: non_constant_identifier_names
  const PillComponent(
      // ignore: non_constant_identifier_names
      {Key? key,
      // ignore: non_constant_identifier_names
      required this.PillColor,
      // ignore: non_constant_identifier_names
      required this.PillText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Text(PillText),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Colors.black45,
          spreadRadius: 0.10,
          blurRadius: 2,
          offset: Offset(2, 3),
        ),
      ], borderRadius: BorderRadius.circular(10), color: PillColor),
    );
  }
}
