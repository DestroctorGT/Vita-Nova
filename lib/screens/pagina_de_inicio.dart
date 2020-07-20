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
        type: BottomNavigationBarType.fixed,
        iconSize: 27.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.send),
            title: Text('Mensaje'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.plusSquare),
            title: Text('Subir'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
            title: Text('Buscar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.settings),
            title: Text('Ajustes'),
          ),
        ],
      ),
    );
  }
}
