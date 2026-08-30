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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xffF8F9FE),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pallabi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Hey Sandip!',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xffF8F9FE),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Text(
                  'How\'s your project going?',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xff006FFD),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sandip',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Hi Pallabi!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xff006FFD),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text(
                    'It\'s going well. Thanks for asking!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xffF8F9FE),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pallabi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'No worries. Let me know if you\nneed any help',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.add,
                  size: 35,
                  color: Color(0xff006FFD),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}