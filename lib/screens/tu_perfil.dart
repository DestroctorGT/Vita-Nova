import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';

class TuPerfil extends StatefulWidget {
  @override
  _TuPerfilState createState() => _TuPerfilState();
}

class _TuPerfilState extends State<TuPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: kIconSizeNavigationBar,
        items: UserNavigationBar,
      ),
    );
  }
}
