import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  final String label;
  final IconData icon;
  final bool isPassword;

  const CustomTextField({@required this.label,@required this.icon,@required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon , color: Colors.white,),
        labelText: label ,
        labelStyle: TextStyle(color: Colors.white),
        counterStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white60,
            width: 1.8,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white60,
            width: 1.8,
          ),
        ),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
      obscureText: isPassword,
    );
  }
}
