import 'package:flutter/material.dart';
import 'package:multipurpose/chats.dart';
import 'package:multipurpose/settings.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> items = [
    Chats(),
    Text('Friends'),
    Settings()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (value) {
          currentIndex = value;
          setState(() {
            
          });
        },
        currentIndex: currentIndex ,
        selectedItemColor: Color(0xff006FFD),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Chats'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Friends'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          )
        ]
      ),
      body: SafeArea(child: items[currentIndex])
    );
  }
}