import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({
    super.key,
    required this.currentValue,
    required this.min,
    required this.max,
    required this.step,
  });

  final double currentValue;
  final double min;
  final double max;
  final double step;


  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {

  late double _currentValue;
  late double _min;
  late double _max;
  late double _step;
  late int _divisions;

  @override
  void initState() {
    super.initState();

    _currentValue = widget.currentValue;
    _min = widget.min;
    _max = widget.max;
    _step = widget.step;
    _divisions = ((_max - _min) / _step).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        activeTrackColor: Colors.white,
        thumbColor: Colors.white,
        trackHeight: 10,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12)
      ),
      child: Slider(
        value: _currentValue,
        min: _min,
        max: _max,
        divisions: _divisions,
        label: _currentValue.toString(), 
        onChanged: (double v) { 
          setState(() {
            double a = double.parse(v.toStringAsPrecision(2));
            _currentValue = a;
            // print(a);
          });
        },
        onChangeEnd: (double v) {
          setState(() {
            double a = double.parse(v.toStringAsPrecision(2));
            _currentValue = a; 
          });
        },
      ),
    );
  }
}