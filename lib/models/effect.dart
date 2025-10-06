

import 'package:gp2xx/models/parameter/parameter.dart';
import 'package:gp2xx/types/effect_type.dart';

class Effect {
  final String name;
  final int id;
  // final String description;

  final EffectType type;
  bool state;
  
  // Parameter related
  List<int> activeBindParameters;

  final List<Parameter> parameters;

  Effect({
    required this.name,
    required this.id,
    required this.type,
    required this.state,
    required this.activeBindParameters,
    required this.parameters,
  });

  // Methods
  bool get hasActiveBindParameters {
    return activeBindParameters.isNotEmpty;
  }

  set stateValue(bool newState) {
    state = newState;
  }

  String get typeName {
    return type.name;
  }

  setParameterValue(int parameterId, double value) {
    //TODO: Implement set Parameter Value
  }
}