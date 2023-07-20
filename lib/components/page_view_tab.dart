import 'package:flutter/material.dart';

class PageViewTab extends StatelessWidget {
  final List<Widget> children;

  const PageViewTab({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: children,
      ),
    );
  }
}
