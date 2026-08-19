import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final Color color;
  const new({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        color: color
      ),
    );
  }
}
