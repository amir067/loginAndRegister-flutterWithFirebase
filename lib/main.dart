import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/signup_screen.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        SignUpScreen.id : (context) => SignUpScreen(),
      },
    );
  }
}
