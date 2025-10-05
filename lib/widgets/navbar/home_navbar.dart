
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int i) { 
          switch (i) {
            case 0:
              //Navigator.pushNamed(context, '/homepage');
              Navigator.pop(context);
            case 1:
              Navigator.pushNamed(context, '/aboutpage');
          }
          setState(() {
            _selectedIndex = i;
          });
        },
      );
  }
}