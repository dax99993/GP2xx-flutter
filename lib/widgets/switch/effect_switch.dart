
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/box/box.dart';
import 'package:gp2xx/widgets/switch/switch.dart';

class EffectSwitch extends StatelessWidget {
  const EffectSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Expanded(
        child: Box(
          child: Column(
            children: [
              Text(
                "ASD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MySwitch(initialValue: true),
            ],
          ),
        ),
      ),
    );
  }
}