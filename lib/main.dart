import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

const kHomeScreen = 'Home Screen';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vita Nova',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: kHomeScreen,
      getPages: [
        GetPage(name: kHomeScreen, page: () => HomeScreen()),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding: EdgeInsets.all(15.0),
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
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Registrarse',
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
