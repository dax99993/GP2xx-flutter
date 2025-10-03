
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/appbar/appbar.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyAppBar(
      title: "ASD",
      actions: Text("data"),
    );
  }
}