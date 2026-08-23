import 'package:flutter/material.dart';

class SettingsItems extends StatelessWidget {

  final String items;
  const new({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        children: [
          Text(
            items,
            style: TextStyle(
              fontSize: 16
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 28,
          ),
        ],
      ),
    );
  }
}