enum FxLoopMode {
    paralele(0),
    series(1);

    final int code;

    const FxLoopMode(this.code);
}

// FxLoop settins
class FxLoop {
  int sendLevel; // in range 0-100
  int returnLevel; // in range 0-100
  int sendPosition; // in range 0-10
  int returnPosition; // in range 0-10; <= to sendPosition
  FxLoopMode mode;


  FxLoop(
    this.sendLevel,
    this.returnLevel,
    this.sendPosition,
    this.returnPosition,
    this.mode,
  );


}