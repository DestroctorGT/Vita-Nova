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
            child: RaisedButton(
              color: Colors.indigoAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              onPressed: () {
                Get.toNamed(kIniciarSesion);
              },
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Center(
            child: RaisedButton(
              color: Colors.indigoAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
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
