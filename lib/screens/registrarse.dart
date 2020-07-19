import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/userinputwidget.dart';

class Registrarse extends StatelessWidget {
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
          Text(
            'Vita Nova',
            style: kVitaNovaTextStyle,
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
          RaisedButton(
            padding: EdgeInsets.all(20.0),
            color: Colors.indigoAccent,
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
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }
}
