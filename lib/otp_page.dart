import 'package:flutter/material.dart';
import 'package:multipurpose/main_page.dart';
import 'package:multipurpose/otp_box.dart';
import 'package:multipurpose/settings.dart';

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
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()) 
                    );
                  },
                  child: Container(
                      height: 60,
                      width: double.infinity,
                      alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff006FFD),
                          border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Continue',
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
      ),
    );
  }
}