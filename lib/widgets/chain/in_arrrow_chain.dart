
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InArrrowChain extends StatelessWidget {
  const InArrrowChain({super.key, required this.parentWidth, required this.width, required this.height, required this.position});

  final double parentWidth;
  final double width;
  final double height;
  final int position;

  calculateRowPosition(int position) {
    final int row = (position / 4).floor() ;

    switch(row) {
      case 0:
        return 0.0;
      case 1:
        return 0.42;
      case 2:
        return 0.84;
      default:
        return 0.0;
    }
  }

  calculateColPosition(int position) {
    final int col = position % 4;

    switch(col) {
      case 0:
        return 0.075;
      case 1:
        return 0.3;
      case 2:
        return 0.51;
      case 3:
        return 0.72;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 165.0 * calculateRowPosition(position),
      left: parentWidth * calculateColPosition(position) - (width * 0.5), 
      child: 
        SvgPicture.asset(
          'assets/icons/InArrow.svg',
          width: width,
          height: height,
        ),
    );
  }
}