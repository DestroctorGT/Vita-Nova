import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/tu_perfil_tus_publicaciones.dart';
import 'package:vita_nova/user_widgets/tu_perfil_tus_gustos.dart';

class TuPerfil extends StatefulWidget {
  @override
  _TuPerfilState createState() => _TuPerfilState();
}

class _TuPerfilState extends State<TuPerfil> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Tus publicaciones',
                  style: kNormalTextFontSize,
                ),
              ),
              Tab(
                child: Text(
                  'Tus Gustos',
                  style: kNormalTextFontSize,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TuPerfilTusPublicaciones(),
            TuPerfilTusGustos(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: kIconSizeNavigationBar,
          items: UserNavigationBar,
        ),
      ),
    );
  }
}
