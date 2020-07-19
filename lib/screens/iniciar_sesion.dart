import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';

class IniciarSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Image.asset(
              'images/Victori Icon.png',
              scale: 2.0,
            ),
          ),
          Flexible(
            child: Text(
              'Vita Nova',
              style: kVitaNovaTextStyle,
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 45.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 45.0, right: 45.0, top: 45.0, bottom: 45.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.all(20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
