import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const new({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Edit'
              )
            ],
          )
        ],
      ),
    );
  }
}