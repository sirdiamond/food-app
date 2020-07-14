import 'package:flutter/material.dart';

//APP BAR
class MyAppBar extends StatelessWidget {
  final bool showBackButton;

  MyAppBar({this.showBackButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Row(
        mainAxisAlignment: showBackButton
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.end,
        children: [
          if (showBackButton)
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.keyboard_backspace,
                  size: 30, color: Colors.brown[900]),
            ),
          Icon(Icons.menu, size: 30, color: Colors.brown[900]),
        ],
      ),
    );
  }
}
