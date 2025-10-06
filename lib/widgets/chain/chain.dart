import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Chain extends StatelessWidget {
  const Chain({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 190,
      padding: EdgeInsets.only(top: 25, bottom: 25),
      // color: Colors.red,
      // Fixed chain icon
      child: SvgPicture.asset(
            'assets/icons/Chain.svg',
            fit: BoxFit.fill,
          ),
    );
  }
}