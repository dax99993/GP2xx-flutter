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
      // height: height,
      // padding: EdgeInsets.all(25),
      color: Colors.red,
      child: Stack(alignment: AlignmentGeometry.center,
        children: [
          // Fixed chain icon
          // SvgPicture.asset('assets/icons/Chain.svg', width: width, height: height,),
          SvgPicture.asset('assets/icons/Chain.svg', width: width),
        ],
      )
    );
  }
}