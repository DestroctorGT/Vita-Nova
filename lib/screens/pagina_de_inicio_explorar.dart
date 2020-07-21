import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(FeatherIcons.user),
                padding: EdgeInsets.all(10.0),
                iconSize: 27.0,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Amigos',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                '|',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                width: 16.0,
              ),
              FlatButton(
                child: Text(
                  'Explorar',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Text('Nombre del usuario'),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/Victori Icon.png',
                    scale: 2.0,
                  ),
                  Text('Descripcion de la imagen'),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(FeatherIcons.messageSquare),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(FeatherIcons.send),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(FeatherIcons.share),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 27.0,
        items: UserNavigationBar,
      ),
    );
  }
}
