import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';

class TuPerfilTusGustos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Text(
              'Nombre de usuario',
              style: kNormalTextFontSize,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                'Tienes 10 amigos',
                style: kNormalTextFontSize,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 55.0,
        ),
        Center(
          child: Text(
            'Descripción pequeña del usuario',
            style: kNormalTextFontSize,
          ),
        ),
        SizedBox(
          height: 45.0,
        ),
      ],
    );
  }
}
