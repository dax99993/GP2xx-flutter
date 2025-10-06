
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/box/parameter_box.dart';
import 'package:gp2xx/widgets/buttons/effect_selector_button.dart';
import 'package:gp2xx/widgets/chain/effect_chain.dart';
import 'package:gp2xx/widgets/slider/slider.dart';
import 'package:gp2xx/widgets/switch/effect_switch.dart';

class EditPageLandscape extends StatelessWidget {
  const EditPageLandscape
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          color: Colors.pink,
          child: Column(
            children: [
              EffectChain(),
            ],
          ),
        ),
        Container(
          width: 350,
          color: Colors.lightGreen,
          // height: finitemax,
          child: Column(
            children: [
              Row(children: [
                EffectSwitch(),
                Expanded(
                  child: EffectSelectorButton(),
                )
              ],),
              ParameterBox(
                name: "Param1",
                value: "60",
                child: MySlider(currentValue: 6, min: 0, max: 10, step: 0.1),
              ),
            ],
          ),
        ),
      ]
    );
  }
}