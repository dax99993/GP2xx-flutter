
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gp2xx/widgets/chain/chain.dart';
import 'package:gp2xx/widgets/chain/in_arrrow_chain.dart';
import 'package:gp2xx/widgets/grid/effects_grid.dart';

class EffectChain extends StatelessWidget {
  const EffectChain({super.key});

  // Get from device and clamp to min and max
  final double width = 400;
  final double imageWidth = 40;

  final double height = 350;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.green,
      child: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          Chain(width: width, height: height),
          EffectsGrid(width: width, height: height),
          InArrrowChain(parentWidth: width, width: 20, height: 20, position: 0,),
          InArrrowChain(parentWidth: width, width: 20, height: 20, position: 1,),
          InArrrowChain(parentWidth: width, width: 20, height: 20, position: 2,),
          InArrrowChain(parentWidth: width, width: 20, height: 20, position: 3,),
          Flex(
              direction: Axis.horizontal,
              children: [
              Expanded(
                child: Align(
                  alignment: AlignmentGeometry.xy(0.0, 1.0),
                  child: SvgPicture.asset(
                    'assets/icons/OutArrow.svg',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              ]
            ),
        ],
      ),
    );
  }
}