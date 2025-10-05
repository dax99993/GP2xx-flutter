import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key, required this.initialValue});

  final bool initialValue;

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {

  late bool _value;

  @override
  void initState() {
    super.initState();

    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchTheme(
        data: SwitchThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: SizedBox(
            width: 50,
            height: 40,
          child: Transform.scale(
            scaleY: 0.75,
            // scaleX: 1.25,
            child: Switch(
              // activeThumbColor: Colors.black,
              // activeTrackColor: Colors.,
              value: _value,
              onChanged: (bool value) {
                setState(() {
                  _value = value;
                });
              },
          ),
                ),
        ),
    );
  }
}