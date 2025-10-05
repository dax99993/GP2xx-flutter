import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage
({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Column(
        children: [
          Text("About us"),
          Text("Language"),
          Text("A"),
        ],
      )
    );
  }
}