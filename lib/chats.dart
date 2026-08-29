import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multipurpose/chats_items.dart';

class Chats extends StatefulWidget {
  const new({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  final List<String> _names = [

    'pallabi',
    'Baba',
    'Maa',
    'Anirban da',
    'Bipasa di',
    'P - Maa'

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                    fontWeight: FontWeight.w600,
                    color: Color(0xff006FFD)
                  ),
                ),
                Expanded(
                  child: Text(
                    'Chats',
                    textAlign: TextAlign.center,
                  ),
                ),
                SvgPicture.asset(
                  'assets/Fill.svg',
                  colorFilter: ColorFilter.mode(Color(0xff066FFD ), BlendMode.srcIn),
                )
              ],
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              
              decoration: InputDecoration(
                hintText: 'Search',
                
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color(0xffF8F9FE),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0
                  ),
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
          ),
          SizedBox(height: 40,),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 30,),
              shrinkWrap: true,
              itemCount: _names.length,
              itemBuilder: (context, i) => ChatsItems(name: _names[i],)
            ),
          )
        ],
      ),
    );
  }
}