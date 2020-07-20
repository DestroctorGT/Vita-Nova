import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class PaginaDeInicio extends StatefulWidget {
  @override
  _PaginaDeInicioState createState() => _PaginaDeInicioState();
}

class _PaginaDeInicioState extends State<PaginaDeInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.send),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.plusSquare),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.settings),
          ),
        ],
      ),
    );
  }
}
