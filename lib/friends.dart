import 'package:flutter/material.dart';

class Friends extends StatelessWidget {

  final String name;
  final String userName;

  const new({super.key, required this.name, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            'assets/Avatar.png',
            height: 45,
            width: 45,
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                userName
              )
            ],
          )
        ],
      ),
    );
  }
}