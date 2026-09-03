import 'package:flutter/material.dart';
import 'package:multipurpose/stars.dart';

class FeedbackPage extends StatefulWidget {
  const new({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {

  final List<int> _selectedStar = [];
  //final Widget stars = Stars(selected: true,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 28,
                    color: Color(0xff006FFD),
                    fontWeight: FontWeight.bold,
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Feedback',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Your project is finished.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'How would you rate the prototyping kit?',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, i) => InkWell(
                  onTap: () {
                    setState(() {
                      if (_selectedStar.contains(i)) {
                        _selectedStar.remove(i);
                      }
                      else {
                        _selectedStar.add(i);
                      }
                    });
                  },
                  child: Stars(selected: _selectedStar.contains(i))
                ),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}