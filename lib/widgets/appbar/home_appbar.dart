
import 'package:flutter/material.dart';
import 'package:gp2xx/screens/edit.dart';
import 'package:gp2xx/widgets/appbar/appbar.dart';

class HomePageBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: "Home Page",
      actions: [
        ElevatedButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return EditPage();
            // }));
            Navigator.pushNamed(context, '/editpage');
            // Navigator.pushReplacementNamed(context, '/editpage');
          },
          child: Text("Skip")
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}