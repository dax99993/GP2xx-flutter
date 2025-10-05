
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/appbar/home_appbar.dart';
import 'package:gp2xx/widgets/banners/connect_banner.dart';
import 'package:gp2xx/widgets/navbar/home_navbar.dart';
import 'package:gp2xx/widgets/navbar/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageBar(),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConnectBanner(),
          ],
        ),
      ),
      bottomNavigationBar: HomeNavBar(),
      );
  }
}
