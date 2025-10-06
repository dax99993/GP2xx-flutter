import 'package:flutter/material.dart';
import 'package:gp2xx/screens/edit/edit_landscape.dart';
import 'package:gp2xx/screens/edit/edit_portrait.dart';
import 'package:gp2xx/types/effect_type.dart';
import 'package:gp2xx/widgets/appbar/edit_appbar.dart';
import 'package:gp2xx/widgets/box/box.dart';
import 'package:gp2xx/widgets/box/parameter_box.dart';
import 'package:gp2xx/widgets/chain/chain.dart';
import 'package:gp2xx/widgets/chain/effect_chain.dart';
import 'package:gp2xx/widgets/grid/effects_grid.dart';
import 'package:gp2xx/widgets/images/effect_image.dart';
import 'package:gp2xx/widgets/searchbar/searchbar.dart';
import 'package:gp2xx/widgets/slider/slider.dart';
import 'package:gp2xx/widgets/switch/switch.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            appBar: EditPageBar(),
            body: EditPagePortrait()
          );
        } else {
          return Scaffold(
            appBar: EditPageBar(),
            body: EditPageLandscape()
          );
        }
    });
  }
}