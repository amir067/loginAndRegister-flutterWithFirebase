import 'package:e_commerce/Components/custom_flatbutton.dart';
import 'package:e_commerce/Components/custom_textfield.dart';
import 'package:e_commerce/Screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 30),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icons/e.png',
                  scale: 20,
                  color: Colors.white,
                ),
                Text(
                  '-Commerce'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat',
                      fontSize: 28,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            SizedBox(height:  height * 0.1,),
            Container(
              margin: EdgeInsets.all(28),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans Condensed',
                        fontSize: 38,

                      ),
                    ),
                  ),
                  SizedBox(height:  height * 0.02,),
                  CustomTextField(icon: Icons.email_outlined, isPassword: false, label: "Email", ),
                  SizedBox(height:  height * 0.02,),
                  CustomTextField(icon: Icons.lock_open, isPassword: true, label: "Password", ),
                  SizedBox(height:  height * 0.07,),
                  CustomFlatButton(
                    width: width,
                    height: height * 0.0580,
                    buttonColor: Colors.white,
                    textColor: Colors.blueAccent ,
                    text: 'Sign in' ,

                  ),
                  SizedBox(height:  height * 0.08,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Don\'t have an account ? ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600

                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {Navigator.pushNamed(context, SignUpScreen.id);},
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
