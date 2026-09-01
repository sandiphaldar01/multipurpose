import 'package:flutter/material.dart';
import 'package:multipurpose/main_page.dart';
import 'package:multipurpose/otp_box.dart';

class OtpPage extends StatefulWidget {
  const new({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'Enter confirmation code',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
                ),
              ),
              SizedBox(height: 10,),
              Text(
                textAlign: TextAlign.center,
                'A 4-digit code was sent to \nname@gmail.com'
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: OtpBox()
                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: OtpBox()
                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: OtpBox()
                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: OtpBox(
                        
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 100,),
              Text(
                'Resend code',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff066FFD)
                ),
              ),
              SizedBox(height: 40,),
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
                    MaterialPageRoute(builder: ((context) => MainPage())
                  )
                 );
                }, 
                child: Text(
                  'Continue',
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
      ),
    );
  }
}