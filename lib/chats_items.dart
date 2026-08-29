import 'package:flutter/material.dart';

class ChatsItems extends StatelessWidget {

  final name;
  const new({super.key, required this.name});

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
                'Stand up for what you belive in'
              )
            ],
          )
        ],
      ),
    );
  }
}