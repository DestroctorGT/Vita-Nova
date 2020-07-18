import 'package:flutter/material.dart';

class IniciarSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/Victori Icon.png',
              scale: 2.0,
            ),
          ),
          Text(
            'Vita Nova',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
