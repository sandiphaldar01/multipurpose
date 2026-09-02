import 'package:flutter/material.dart';
import 'package:multipurpose/friends.dart';

class FriendsPage extends StatefulWidget {
  const new({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {

  List<String> names = [
    'Pallabi',
    'Baba',
    'Maa',
    'Anirban Da',
    'Bipasa Di',
    'P - Maa'
  ];
  List<String> userNames = [
    'pallabi@001',
    'baba@002',
    'maa@003',
    'anirbanda@004',
    'bipasadi@005',
    'p-maa@006'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff006FFD)
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Friends',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff006FFD),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF8F9FE),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.search
                  ),
                  hintText: 'Search'
                ),
              ),
            ),
            SizedBox(height: 30,),
            Flexible(
              child: ListView.separated(
                itemBuilder: (context, i) => Friends(
                  name: names[i], 
                  userName: userNames[i]
                ), 
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    height: 30,
                    color: Colors.grey[300],
                  ),
                ), 
                itemCount: names.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}