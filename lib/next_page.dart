import 'package:flutter/material.dart';
import 'package:multipurpose/color_box.dart';
import 'package:multipurpose/login.dart';

class NextPage extends StatefulWidget {
  const new({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  final List<int> _selectedIndices = [];
  final List<String> _title = [
    'User Interface',
    'User Experience',
    'User Research',
    'UX Writing',
    'User Testing',
    'Service Design',
    'Strategy',
    'Design Systems'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.only(right: 200),
                height: 9,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE8E9F1),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff006FFD),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Personalise your \nexperience',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Choose your interests',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
            ),
            SizedBox(height: 40,),
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: _title.length,
                separatorBuilder: (context, index) => SizedBox(height: 10,),
                itemBuilder: (context, i) => InkWell(
                  onTap: () {
                    setState(() {
                      if (_selectedIndices.contains(i)){
                        _selectedIndices.remove(i);
                      }
                      else {
                        _selectedIndices.add(i);
                      }
                    });
                  },
                  child: ColorBox(
                    text: _title[i], 
                    isSelected: _selectedIndices.contains(i),
                  ),
                )
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (_selectedIndices.length >= 3){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()) 
                      );
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: 
                            Text('You have to select atleast 3 or more interets',
                            style: TextStyle(
                              //color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            )
                          )
                      );
                    }
                  });
                },
                child: Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff006FFD),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Next',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
               ),
              ),
            ),
           ),
          ],
        ),
      ),
    );
  }
}