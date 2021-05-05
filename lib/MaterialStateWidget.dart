import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final buttonColor;
  final textColor;

  MaterialButtonWidget(
      {@required this.textColor,
        @required this.buttonColor,
        @required this.onPressed,
        @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60.0,
      onPressed: onPressed,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18.0,
          color: textColor,
        ),
      ),
    );
  }
}