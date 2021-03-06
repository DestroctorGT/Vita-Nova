import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/pagina_de_inicio_explorar.dart';
import 'package:vita_nova/user_widgets/pagina_de_inicio_amigos.dart';

class PaginaDeInicio extends StatefulWidget {
  final String id = 'Pagina de inicio';
  @override
  _PaginaDeInicioState createState() => _PaginaDeInicioState();
}

class _PaginaDeInicioState extends State<PaginaDeInicio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: kColorButtonDefaultIndigoAccent,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Amigos',
                  style: kNormalTextFontSize,
                ),
              ),
              Tab(
                child: Text(
                  'Explorar',
                  style: kNormalTextFontSize,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PaginaDeInicioExplorar(),
            PaginaDeInicioAmigos(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kColorButtonDefaultIndigoAccent,
          iconSize: kIconSizeNavigationBar,
          items: UserNavigationBar,
        ),
      ),
    );
  }
}
