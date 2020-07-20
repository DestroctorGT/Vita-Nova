import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/userinputwidget.dart';
import 'package:get/get.dart';

class IniciarSesion extends StatelessWidget {
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
              Text(
                'Vita Nova',
                style: kVitaNovaTextStyle,
              ),
            ],
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 45.0),
              child: UserInputWidget(
                inputTextName: 'Correo',
                inputType: TextInputType.emailAddress,
                obscureTextCheck: false,
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 45.0, right: 45.0, top: 45.0, bottom: 45.0),
              child: UserInputWidget(
                  inputTextName: 'Contraseña', obscureTextCheck: true),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              color: kColorButtonDefaultIndigoAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Get.toNamed(kPaginaDeInicio);
              },
            ),
          ),
        ],
      ),
    );
  }
}
