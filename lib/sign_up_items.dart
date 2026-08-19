import 'package:flutter/material.dart';

class SignUpItems extends StatefulWidget {

  final String? title;
  final String hint;
  final bool isPassword;

  const new({super.key, required this.title, required this.hint, required this.isPassword,});

  @override
  State<SignUpItems> createState() => _SignUpItemsState();
}

class _SignUpItemsState extends State<SignUpItems> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null) Text(
            widget.title!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8,),
          TextFormField(
            obscureText: widget.isPassword ? visibility : false,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff006FFD))
              ),
              hintText: widget.hint,
              suffixIcon: widget.isPassword ? InkWell(
                onTap: () {
                  setState(() {
                    visibility = !visibility;
                  });
                },
                child: visibility == true? Icon(Icons.visibility) : Icon(Icons.visibility_off)
              ) : null
            ),
          ),
        ],
      ),
    );
  }
}