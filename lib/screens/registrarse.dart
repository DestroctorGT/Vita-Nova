import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/userinputwidget.dart';

class Registrarse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                'images/Victori Icon.png',
                scale: 2.0,
              ),
              Center(
                child: Text(
                  'Vita Nova',
                  style: kVitaNovaTextStyle,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 10.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Nombre',
                obscureTextCheck: false,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 45.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Apellido',
                obscureTextCheck: false,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 45.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Email',
                inputType: TextInputType.emailAddress,
                obscureTextCheck: false,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 45.0, right: 45.0, top: 45.0, bottom: 45.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Contraseña',
                obscureTextCheck: true,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, bottom: 22.0),
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              color: kColorButtonDefaultIndigoAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Crear cuenta',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
