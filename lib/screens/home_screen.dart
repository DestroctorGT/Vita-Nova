import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/Victori Icon.png',
            scale: 2.0,
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
          Center(
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Center(
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 95.0,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.all(15.0),
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
