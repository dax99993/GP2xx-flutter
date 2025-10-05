
import 'package:flutter/material.dart';
import 'package:gp2xx/types/chain_effect_type.dart';
import 'package:gp2xx/widgets/images/effect_image.dart';
import 'package:reorderable_grid/reorderable_grid.dart';

class EffectsGrid extends StatefulWidget {
  const EffectsGrid({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  State<EffectsGrid> createState() => _EffectsGridState();
}

class _EffectsGridState extends State<EffectsGrid> {
  late final double _width;
  late final double _height;
  final int numCols = 4;

  /// create a new list of data
  final items = List<int>.generate(12, (index) => index);


  @override
  void initState() {
    super.initState();

    _width = widget.width;
    _height = widget.height;
  }

  /// when the reorder completes remove the list entry from its old position
  /// and insert it at its new index
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
  }

  bool _dragEnable(int index) {
    return index != 11;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      // color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: ReorderableGridView.extent(
        maxCrossAxisExtent: (_width) / (numCols + 1),
        mainAxisSpacing: 20,
        crossAxisSpacing: 0,
        itemDragEnable: _dragEnable,
        onReorder: _onReorder,
        childAspectRatio: 1,
        children: items.map((item) {
          /// map every list entry to a widget and assure every child has a
          /// unique key
          return SizedBox(
            key: ValueKey(item),
            // padding: EdgeInsets.all(20),
            child: EffectImage(
              effect: ChainEffectType.values[item],
              state: true,
            ),
          );
        }).toList()
      ),
    );
  }
}