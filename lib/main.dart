import 'package:e_commerce/Provider/modalHUD.dart';
import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/home_screen.dart';
import 'Screens/signup_screen.dart';

main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ModalHUD>(
      create: (context) => ModalHUD(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id : (context) => SplashScreen(),
          LoginScreen.id : (context) => LoginScreen(),
          SignUpScreen.id : (context) => SignUpScreen(),
          HomeScreen.id : (context) => HomeScreen(),
        },
      ),
    );
  }
}
