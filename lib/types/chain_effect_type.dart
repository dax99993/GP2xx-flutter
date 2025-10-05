
enum ChainEffectType {
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
  vol(10),
  set(11),
  ;

  final int code;

  const ChainEffectType(this.code);
}