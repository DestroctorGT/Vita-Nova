import 'package:flutter/material.dart';

class UserInputWidget extends StatelessWidget {
  UserInputWidget(
      {@required this.inputTextName,
      this.inputType,
      @required this.obscureTextCheck});
  final inputTextName;
  final TextInputType inputType;
  final bool obscureTextCheck;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscureTextCheck,
      decoration: InputDecoration(
        hintText: inputTextName,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
