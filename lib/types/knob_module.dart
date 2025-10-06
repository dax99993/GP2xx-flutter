
enum KnobModule {
  pre(0),
  wah(1),
  dst(2),
  amp(3),
  nr(4),
  cab(5),
  eq(6),
  mod(7),
  dly(8),
  rvb(9),
  patchvol(11),
  bpm(12),
  off(255);

  final int code;

  const KnobModule(this.code);
}