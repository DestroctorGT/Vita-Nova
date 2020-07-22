import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopUIPaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text(
            'Amigos',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 16.0,
        ),
        Text(
          '|',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          width: 16.0,
        ),
        FlatButton(
          child: Text(
            'Explorar',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
