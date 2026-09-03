import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  
  final bool selected;
  const new({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Icon(
      selected ? Icons.star : Icons.star_border,
      color: selected ? Color(0xff006FFD) : null,
    );
  }
}