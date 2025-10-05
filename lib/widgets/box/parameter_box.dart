import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/box/box.dart';
import 'package:gp2xx/widgets/slider/slider.dart';

class ParameterBox extends StatelessWidget {
  const ParameterBox({super.key, required this.name, this.value = "", required this.child});

  final String name;
  final String value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Box(
      child: Column(
        children: [
          // Param info
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
              Center(
                child: Text(value, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
              )
            ],
          ),
          // Parameter control 
          child
        ],
      ), 
    );
  }
}