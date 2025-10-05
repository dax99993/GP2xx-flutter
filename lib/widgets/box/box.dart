import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        // color: Colors.grey,
        color: Theme.of(context).highlightColor,
      ),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: child
    );
  }
}