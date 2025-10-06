
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/box/parameter_box.dart';
import 'package:gp2xx/widgets/buttons/effect_selector_button.dart';
import 'package:gp2xx/widgets/chain/effect_chain.dart';
import 'package:gp2xx/widgets/slider/slider.dart';
import 'package:gp2xx/widgets/switch/effect_switch.dart';

class EditPagePortrait extends StatelessWidget {
  const EditPagePortrait
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EffectChain(),
        Row(children: [
          EffectSwitch(),
          EffectSelectorButton(),
        ],),
        ParameterBox(
          name: "Param1",
          value: "50",
          child: MySlider(currentValue: 5, min: 0, max: 10, step: 0.1),
        ),
      ]
    );
  }
}