import 'package:flutter/material.dart';

class UserInputWidget extends StatelessWidget {
  UserInputWidget(
      {@required this.inputTextName,
      this.inputType,
      @required this.obscureTextCheck,
      this.onChanged});
  final inputTextName;
  final TextInputType inputType;
  final bool obscureTextCheck;
  final Function onChanged;
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
      onChanged: onChanged,
    );
  }
}
