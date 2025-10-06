
import 'package:gp2xx/types/parameter_type.dart';

abstract class Parameter {

  final String name;
  // index in parameter list
  final int index;
  final int id;
  final ParameterType type;
  // final Map<double, String> labels;

  // Maybe add some field to distinguish if value should be displayed as integer or double
  final double defaultValue;
  final double min;
  final double max;
  final double step;

  double currentValue;

  Parameter({
    required this.name,
    required this.index,
    required this.id,
    required this.type,
    required this.defaultValue,
    required this.currentValue,
    required this.min,
    required this.max,
    required this.step,
  });

  // General methods

  void reset() {
    currentValue = defaultValue;
  }

  double setValue(double value) {
    currentValue = clampValue(value);
    return currentValue;
  }

  double getValue() {
    return currentValue;
  }

  String getCurrentValueAsString();
  String getValueAsString(double value);

  String getName() {
    return name;
  }

  // util methods
  double clampValue(double value) {
    return value.clamp(min, max);
  }

    // for exp settings
    // double getCurrentStep();
    // double getMinValue();
    // String getMinStringValue();
    // double getMaxValue();
    // String getMaxStringValue();
}