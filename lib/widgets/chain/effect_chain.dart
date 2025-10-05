
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/chain/chain.dart';
import 'package:gp2xx/widgets/grid/effects_grid.dart';

class EffectChain extends StatelessWidget {
  const EffectChain({super.key});

  final double width = 400;
  final double height = 350;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.blue,
      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [
            Chain(width: width, height: height,),
            EffectsGrid(width: width, height: width,),
        ],
      ),
    );
  }
}