import 'package:flutter/material.dart';
import 'package:gp2xx/types/effect_type.dart';
import 'package:gp2xx/widgets/appbar/edit_appbar.dart';
import 'package:gp2xx/widgets/box/box.dart';
import 'package:gp2xx/widgets/box/parameter_box.dart';
import 'package:gp2xx/widgets/chain/chain.dart';
import 'package:gp2xx/widgets/chain/effect_chain.dart';
import 'package:gp2xx/widgets/grid/effects_grid.dart';
import 'package:gp2xx/widgets/images/effect_image.dart';
import 'package:gp2xx/widgets/searchbar/searchbar.dart';
import 'package:gp2xx/widgets/slider/slider.dart';
import 'package:gp2xx/widgets/switch/switch.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditPageBar(),
      body: Column(
        children: [
          EffectChain(),
          // MySearchBar(),
          // // Effect state switch
          // SizedBox(
          //   // height: 90,
          //   child: Expanded(
          //     child: Box(child: 
          //       Column(
          //         children: [
          //           Text("ASD", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          //           MySwitch(initialValue: true),
          //         ],
          //      )
          //     ),
          //   ),
          // ),
          // // Efect selector
          // SizedBox(
          //   height: 80,
          //   child: Box(child: 
          //     Expanded(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //             // width: 200,
          //             children: [
          //               Text(""),
          //               Text("Effect Name", style: TextStyle(color: Colors.white, fontSize: 24),),
          //               Icon(Icons.chevron_right, color: Colors.white,)
          //         ],
          //                    ),
          //     )
          //   ),
          // ),
          // ParameterBox(
          //   name: "Param1",
          //   value: "50",
          //   child: MySlider(currentValue: 5, min: 0, max: 10, step: 0.1),
          // ),
        ]
      ),
    );
  }
}