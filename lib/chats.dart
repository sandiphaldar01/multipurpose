import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Chats extends StatefulWidget {
  const new({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
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
          )
        ],
      ),
    );
  }
}