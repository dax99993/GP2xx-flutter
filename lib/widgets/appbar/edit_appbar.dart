
import 'package:flutter/material.dart';
import 'package:gp2xx/widgets/appbar/appbar.dart';

class EditPageBar extends StatelessWidget implements PreferredSizeWidget {
  const EditPageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: "Edit Page",
      leading: IconButton.filled(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.home)
      ),
      actions: [
        IconButton(
          onPressed: () { },
          icon: Icon(Icons.chevron_left)
        ),
        IconButton(
          onPressed: () { },
          icon: Icon(Icons.chevron_right)
        ),
        IconButton(
          onPressed: () { },
          icon: Icon(Icons.save)
        ),
        IconButton(
          onPressed: () { },
          icon: Icon(Icons.more_vert)
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}