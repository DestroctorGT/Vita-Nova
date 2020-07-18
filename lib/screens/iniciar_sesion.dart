import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';

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
            style: kVitaNovaTextStyle,
          ),
          SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
