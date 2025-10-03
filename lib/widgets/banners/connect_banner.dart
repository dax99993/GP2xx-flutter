import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConnectBanner extends StatelessWidget {
  const ConnectBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        children: [
          SizedBox(
            width: 350,
            child: Text(
              "Please connect GP-200 to your device",
              style: TextStyle(fontSize: 32, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/GPIcon.svg",
                height: 64,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              Icon(Icons.cable, color: Colors.white, size: 64),
              Icon(Icons.smartphone, color: Colors.white, size: 64),
            ],
          ),
        ],
      ),
    );
  }
}