import 'package:flutter/material.dart';
import 'package:multipurpose/otp_page.dart';
import 'package:multipurpose/sign_up_items.dart';

class SignUp extends StatefulWidget {
  const new({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool visibility = false;
  bool check = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController =TextEditingController();
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Create an account to get start'
              )
            ),
            SizedBox(height: 30,),
            SignUpItems(
              textEditingController: nameController,
              title: 'Name',
              hint: 'Sandip Haldar',
              isPassword: false,
            ),
            SizedBox(height: 20,),
            SignUpItems(
              textEditingController: emailController,
              title: 'Email Address', 
              hint: 'name@gmail.com',
              isPassword: false,
            ),
            SizedBox(height: 20,),
            SignUpItems(
              textEditingController: passwordController,
              title: 'Password', 
              hint: 'Create Password',
              isPassword: true,
            ),
            SizedBox(height: 10,),
            SignUpItems(
              textEditingController: confirmPasswordController,
              title: null, 
              hint: 'Confirm Password',
              isPassword: true,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Color(0xff006FFD),
                    activeColor: Colors.white,
                    //hoverColor: Colors.black,
                    value: check, 
                    onChanged: (value){
                      if (
                        nameController.text.isNotEmpty && 
                        emailController.text.isNotEmpty && 
                        passwordController.text.isNotEmpty &&
                        confirmPasswordController.text.isNotEmpty &&
                        passwordController.text == confirmPasswordController.text
                      ) {
                        check = value ?? false;
                        setState(() {
                        
                      });
                    }
                   }
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'I\'ve read and agree with the',
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'terms and',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff006FFD)
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Condition',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff006FFD)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'and the',
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'Privacy Policy.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff006FFD)
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
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
                  if (check = check) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpPage()) 
                  );
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: 
                        Text(
                          textAlign: TextAlign.center,
                          'Terms and Condition doe\'s not accept',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      )
                    );
                  }
                  setState(() {
                    
                  });
                }, 
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}