import 'package:flutter/material.dart';

class OtpBox extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        //helperText: '',
        counterText: '',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff006FFD)
          ),
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}