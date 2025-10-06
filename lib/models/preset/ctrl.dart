
class Ctrl {
    int number; // Ctrl number in range [0-7]
    int mode; // mode yellow = 0; red = 1
    List<int> assignPedals; // Pedals assign to turn on,
    // each element corresponds to an effect in the chainEffect, where the element index is chainID
    // value 0 is to not turn it on; value of 1 is to turn it on

    Ctrl(
      this.number,
      this.mode,
      this.assignPedals,
    );
}