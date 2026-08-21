import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  const new({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  SvgPicture.asset(
                  'assets/profile.svg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                 ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color(0xff006FFD),
                    shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.edit
                  ),
                ),
               ]
              )
            ],
          ),
        ),
      ),
    );
  }
}