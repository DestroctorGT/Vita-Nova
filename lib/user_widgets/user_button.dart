import 'package:flutter/material.dart';

class UserButton extends StatelessWidget {
  UserButton(
      {@required this.colorButton,
      @required this.buttonText,
      @required this.onPressed,
      @required this.fontSize,
      this.buttonPadding});
  final Color colorButton;
  final EdgeInsetsGeometry buttonPadding;
  final buttonText;
  final double fontSize;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: colorButton,
      padding: buttonPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: fontSize,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
