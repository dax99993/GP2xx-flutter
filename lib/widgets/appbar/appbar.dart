
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.title, this.actions});

  final String title;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title, style:TextStyle(color: Theme.of(context).colorScheme.primary)),
        // Left children
        // Right Children
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Skip")),
              ],
            ),
        )
        ],
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}