
import 'dart:collection';

import 'package:flutter/material.dart';

typedef MenuEntry = DropdownMenuEntry<String>;
//typedef MenuEntry = DropdownMenuEntry<int>;

class MyDropDownMenu extends StatefulWidget {
  MyDropDownMenu({super.key, required this.initialValue, required entries});

  final int initialValue;
  // final Map<int, String> entries = {};
  List<String> entries = [];

  @override
  State<MyDropDownMenu> createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {


  late int _initialValue;
  late String _dropdownValue;
  late List<MenuEntry> _menuEntries;
  // late List<String> _menuEntries;

  @override
  void initState() {
    super.initState();

    _menuEntries = UnmodifiableListView<MenuEntry>(
      widget.entries.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
    );
    // Map<int, String> entries = widget.entries;
    // List<String> entries = widget.entries;
    // _menuEntries = UnmodifiableListView<MenuEntry>(
    //   entries.map<MenuEntry>(MapEntry(key, value) => MenuEntry(value: key, label: label));
    // );
    _initialValue = widget.initialValue;
    _dropdownValue = _menuEntries[_initialValue].label;

  }

  @override
  Widget build(BuildContext context) {
    return Text("data");
    // return DropdownMenu(
    //   initialSelection: _initialValue,
    //   dropdownMenuEntries: _menuEntries,
    //   onSelected: (String? value) {
    //     // Set state
    //     setState(() {
    //       _dropdownValue = value!;
    //     });
    //   },
    // );
  }
}