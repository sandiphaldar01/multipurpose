import 'package:flutter/material.dart';

class Pallabi extends StatefulWidget {
  const new({super.key});

  @override
  State<Pallabi> createState() => _PallabiState();
}

class _PallabiState extends State<Pallabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff006FFD),
                  ),
                  Expanded(
                    child: Text(
                      'Pallabi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset(
                    'assets/Avatar.png',
                    height: 45,
                    width: 45,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}