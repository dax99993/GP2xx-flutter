import 'package:gp2xx/types/exp_module.dart';

class Exp {
  int id; // Exp id number in range [0, 2] EXP1A, EXP1B, EXP1C
  int paramNumber; //each exp pedal can be assign to change 3 different parameters

  ExpModule expModule; // Module assign to change

  int moduleParamID; // ID of the param in the module
  int moduleParamMinValue; // min number to map when pedal is lifted
  int moduleParamMaxValue; // max number to map when pedal is pressed

  Exp(
    this.id,
    this.paramNumber,
    this.expModule,
    this.moduleParamID,
    this.moduleParamMinValue,
    this.moduleParamMaxValue,
  );
}