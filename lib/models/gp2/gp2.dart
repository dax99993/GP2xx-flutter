import 'package:gp2xx/models/effect.dart';
import 'package:gp2xx/models/preset/preset.dart';

abstract class Gp2 {

  // Presets
  final List<Preset> presets;

  // Current state
  final int? currentPresetNumber;
  final Preset? currentPreset;
  final Effect? currentEffect;

  Gp2({
    required this.presets,
    required this.currentPresetNumber,
    required this.currentPreset,
    required this.currentEffect,
  });


  // methods

}