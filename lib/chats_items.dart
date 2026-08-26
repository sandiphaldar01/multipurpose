import 'package:flutter/material.dart';

class ChatsItems extends StatelessWidget {
  const new({super.key});

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
                'harley James'
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