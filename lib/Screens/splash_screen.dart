
import 'dart:async';

import 'package:e_commerce/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
      Navigator.pushReplacementNamed(context, LoginScreen.id)
    );
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icons/ecommerce.png',
                scale: 5,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 25,),
              Text(
                'E-Commerce'.toUpperCase(),
                style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.none,
                  fontFamily: 'Montserrat',
                  fontSize: 28,
                  letterSpacing: 5
                ),
              ),
              Text(
                'e-commerce app built using Flutter',
                style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.none,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}