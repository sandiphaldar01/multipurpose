import 'package:flutter/material.dart';
import 'package:multipurpose/settings_items.dart';

class Settings extends StatefulWidget {
  const new({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  List<String> settings = [
    'Saved Messages',
    'Recent Calls',
    'Devices',
    'Notifications',
    'Appearance',
    'Language',
    'Privacy & Security',
    'Storage'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
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
              Flexible(
                child: ListView.separated(
                  itemBuilder: (context, i) => SettingsItems(
                    items: settings[i]
                  ), 
                  separatorBuilder: (context, index) => Divider(height: 35,), 
                  itemCount: settings.length
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}