import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/user_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: Image.asset(
              'images/Victori Icon.png',
              scale: 2.2,
            ),
          ),
          Text(
            'Vita Nova',
            style: kVitaNovaTextStyle,
          ),
          SizedBox(
            height: 80.0,
          ),
          Center(
            child: UserButton(
              buttonText: 'Iniciar Sesión',
              colorButton: Colors.indigoAccent,
              buttonPadding: EdgeInsets.all(20.0),
              fontSize: 22.0,
              onPressed: () {
                Get.toNamed(kIniciarSesion);
              },
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Center(
            child: UserButton(
              colorButton: Colors.indigoAccent,
              buttonText: 'Registrarse',
              buttonPadding: EdgeInsets.all(20.0),
              fontSize: 22.0,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 95.0,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                UserButton(
                  buttonText: 'Donar',
                  colorButton: Colors.indigoAccent,
                  fontSize: 15.0,
                  buttonPadding: EdgeInsets.all(15.0),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
