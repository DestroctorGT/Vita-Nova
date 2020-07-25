import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/user_top_icon.dart';
import 'package:vita_nova/user_widgets/top_ui_pagina_inicio.dart';
import 'package:vita_nova/user_widgets/publicacion_user.dart';

class PaginaDeInicio extends StatefulWidget {
  @override
  _PaginaDeInicioState createState() => _PaginaDeInicioState();
}

class _PaginaDeInicioState extends State<PaginaDeInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          UserTopIcon(),
          TopUIPaginaInicio(),
          PublicacionUser(),
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
