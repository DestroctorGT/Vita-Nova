import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'home_screen.dart';

class TuPerfil extends StatefulWidget {
  @override
  _TuPerfilState createState() => _TuPerfilState();
}

class _TuPerfilState extends State<TuPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'Nombre de usuario',
              style: kNormalTextFontSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
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
          Center(
            child: Text('Tus publicaciones', style: kNormalTextFontSize),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: kIconSizeNavigationBar,
        items: UserNavigationBar,
      ),
    );
  }
}
