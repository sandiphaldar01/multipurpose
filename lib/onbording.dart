import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:multipurpose/dot.dart';
import 'package:multipurpose/next_page.dart';

class Onbording extends StatefulWidget {
  const new({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int _i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 550,
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  aspectRatio: 3 / 4,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _i = index;
                    });
                  },
                ),
                items: [
                  Image.asset(
                    'assets/images.jpg', 
                    height: 400, 
                    width: double.infinity, 
                    fit: BoxFit.fill
                  ),
                  Image.asset(
                    'assets/images(2).jpg', 
                    width: double.infinity, 
                    fit: BoxFit.fill
                  ),
                  Image.asset(
                    'assets/images(3).jpg', 
                    height: 350, 
                    width: double.infinity, 
                    fit: BoxFit.fill
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Dot(color: _i == 0? Colors.cyan : Colors.grey,), 
                  SizedBox(width: 10,),
                  Dot(color: _i == 1? Colors.cyan : Colors.grey,),
                  SizedBox(width: 10,), 
                  Dot(color: _i == 2? Colors.cyan : Colors.grey,)
                ]
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Create a prototype in just \na few minutes', 
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30),
            Text(
              'Enjoy these pre-made components and worry only \nabout creating the best product ever.'
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff066FFD),
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) => NextPage())
                  )
                 );
                }, 
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
