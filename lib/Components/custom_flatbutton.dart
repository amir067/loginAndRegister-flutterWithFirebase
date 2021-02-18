import 'package:flutter/material.dart';


class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    @required this.width,
    @required this.height,
    @required this.buttonColor,
    @required this.textColor,
    @required this.text,
  });

  final double width;
  final double height;
  final Color buttonColor;
  final Color textColor;
  final String text;


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      minWidth: width,
      height: height,
      child: Text(
        text,
        style: TextStyle(
            color: textColor
        ),
      ),

    );
  }
}
