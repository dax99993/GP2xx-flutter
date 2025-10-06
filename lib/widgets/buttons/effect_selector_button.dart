
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/box/box.dart';

class EffectSelectorButton extends StatelessWidget {
  const EffectSelectorButton({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 90,
      child: Box(
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            // width: 200,
            children: [
              Text(""),
              Text(
                "Effect Name",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Icon(Icons.chevron_right, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}