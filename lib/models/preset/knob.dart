import 'package:gp2xx/types/knob_module.dart';

class Knob {
    int number; // Number of the knob in range [0, 2]
    KnobModule module; //Module knob is assign to.
    int paramID; //this number is ignore when module is patchvol, bpm or OFF

    Knob(
      this.number,
      this.module,
      this.paramID,
    );
}