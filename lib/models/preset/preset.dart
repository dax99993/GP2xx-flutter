
import 'package:gp2xx/models/preset/ctrl.dart';
import 'package:gp2xx/models/effect.dart';
import 'package:gp2xx/models/preset/exp.dart';
import 'package:gp2xx/models/preset/fxloop.dart';
import 'package:gp2xx/models/preset/knob.dart';

class Preset {
  // General info
  final String name;
  final int number;

  final int category;
  final String author;
  final String note;

  final int volume;
  final int pan;
  final int bpm;

  // Settings
  final PresetSettings settings;

  // Effects
  final List<int> chainEffectOrder;
  final List<Effect> effects;

  Preset({
    required this.name,
    required this.number,
    required this.category,
    required this.author,
    required this.note,
    required this.volume,
    required this.pan,
    required this.bpm,
    required this.chainEffectOrder,
    required this.settings,
    required this.effects,
  });

  // Methods
}

class PresetSettings {

  final FxLoop fxLoop;
  final List<Exp> exps;
  final List<Knob> knobs;
  final List<Ctrl> ctrls;


  PresetSettings({
    required this.fxLoop,
    required this.exps,
    required this.knobs,
    required this.ctrls,
  });
}