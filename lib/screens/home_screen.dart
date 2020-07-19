import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vita_nova/const.dart';

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
                RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Donar',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserButton extends StatelessWidget {
  UserButton(
      {@required this.colorButton,
      @required this.buttonText,
      @required this.onPressed,
      this.buttonPadding});
  final Color colorButton;
  final EdgeInsetsGeometry buttonPadding;
  final buttonText;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: colorButton,
      textColor: Colors.white,
      padding: buttonPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
