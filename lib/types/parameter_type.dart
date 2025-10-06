
enum ParameterType {
  slider(0),
  knob(1),
  combox(2),
  tswitch(3);

  final int code;

  const ParameterType(this.code);
}