import 'package:flutter/material.dart';
import 'package:gp2xx/types/chain_effect_type.dart';

class EffectImage extends StatelessWidget {
  const EffectImage({super.key, required this.effect, required this.state});

  final ChainEffectType effect;
  final bool state;

  String effectImageFile(ChainEffectType effectType, bool state, bool selected) {
    const String baseDir = "assets/images/";
    final String effectName = effectType.name.toUpperCase();
    final String stateStr = state ? "on" : "off";

    if (selected) {
      return "$baseDir${effectName}_${stateStr}_selected.png";
    } else {
      return "$baseDir${effectName}_$stateStr.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        effectImageFile(effect, state, true),
        scale: state ? 1.0 : 0.75,
        fit: BoxFit.fill,
    );
  }
}