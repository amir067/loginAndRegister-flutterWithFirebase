import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  final String label;
  final IconData icon;
  final bool isPassword;
  final Function onclick;

  // ignore: missing_return
  String _errorMessage(String string)
    {
      switch(label)
      {
        case 'Email' : return 'Email is required';
        case 'Password' : return 'Password is required';
        case 'Full Name' : return 'Your name is required';
        case 'Phone Number' : return 'Phone Number is required';

      }
    }

  const CustomTextField(
        {
          @required this.label,
          @required this.icon,
          @required this.isPassword,
          @required this.onclick,
        }
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: missing_return
      validator: (value)
      {
        if(value.isEmpty)
        {
          return _errorMessage(label);
        // ignore: missing_return
        }
      },
      onSaved: onclick,
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
