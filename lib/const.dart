import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

const kColorButtonDefaultIndigoAccent = Colors.indigoAccent;
const kVitaNovaTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Berkshire Swash',
);
const kNormalTextFontSize = TextStyle(
  fontSize: 20.0,
);
const kIconSizeNavigationBar = 27.0;
const List<BottomNavigationBarItem> UserNavigationBar = [
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
];
