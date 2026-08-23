import 'package:flutter/material.dart';
import 'package:multipurpose/settings_items.dart';

class Settings extends StatefulWidget {
  const new({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          
        },
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
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 15,),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [ 
                  Image.asset(
                  'assets/Avatar.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                 ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xff006FFD),
                    shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.edit
                  ),
                ),
               ]
              ),
              SizedBox(height: 15,),
              Text(
                'Sandip Haldar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                '@sandiphaldar01'
              ),
              SizedBox(height: 20,),
              SettingsItems(
                items: 'Saved Messages'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'Recent Calls'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'Devices'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'notifications'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'Appearance'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'Language'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'Privacy & Security'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
              SettingsItems(
                items: 'Storage'
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Divider(
                  height: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}