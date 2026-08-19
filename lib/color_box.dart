import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final String text;
  final bool isSelected;

  const new({super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          border: isSelected ? null : Border.all(), 
          borderRadius: BorderRadius.circular(15), 
          color: isSelected ? Color(0xffEAF2FF) : null
        ),
        child: Row(
          children: [
            Text(text, style: TextStyle(fontSize: 16)),
            Spacer(),
            Icon(
             isSelected ? Icons.check : null, 
              size: 20, 
              color: Color(0xff006FFD)
            ),
          ],
        ),
      ),
    );
  }
}
