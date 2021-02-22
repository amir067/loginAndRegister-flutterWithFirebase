import 'package:e_commerce/Components/custom_flatbutton.dart';
import 'package:e_commerce/Components/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Sevices/auth.dart';
class SignUpScreen extends StatefulWidget {
  static String id = 'SignUpScreen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String _email, _passsword;
    final _auth = Auth();
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
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Form(
              key: _globalKey,
              child: Container(
                margin: EdgeInsets.all(28),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans Condensed',
                          fontSize: 38,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextField(
                      icon: Icons.person_outline_rounded,
                      isPassword: false,
                      label: "Full Name",
                      onclick: (value)
                      {

                      },
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextField(
                      icon: Icons.email_outlined,
                      isPassword: false,
                      label: "Email",
                      onclick: (value) {
                        _email = value;
                      },
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextField(
                      icon: Icons.phone,
                      isPassword: false,
                      label: "Phone Number",
                      onclick: (value)
                      {

                      },
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextField(
                      icon: Icons.lock_open,
                      isPassword: true,
                      label: "Password",
                      onclick: (value) {
                        _passsword = value;
                      },
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Builder(
                      builder: (context) => CustomFlatButton(
                        width: width,
                        height: height * 0.0580,
                        buttonColor: Colors.white,
                        textColor: Colors.blueAccent,
                        text: 'Sign Up',
                        onpressed: () async {
                          if (_globalKey.currentState.validate()) {

                            try {
                              _globalKey.currentState.save();
                              final authResult =
                                  await _auth.signUp(_email, _passsword);
                              print(authResult);
                            } catch (e) {
                              Scaffold.of(context).showSnackBar(new SnackBar(
                                content: new Text(e.message),
                              ));
                            }
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
