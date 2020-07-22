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
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                '|',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                width: 16.0,
              ),
              FlatButton(
                child: Text(
                  'Explorar',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Card(
              color: Colors.black26,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Nombre del usuario',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/Victori Icon.png',
                    scale: 2.0,
                  ),
                  Text(
                    'Descripcion de la imagen',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            FeatherIcons.messageSquare,
                            size: 35.0,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.send,
                            size: 35.0,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.share,
                            size: 35.0,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '33 Comentarios',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        IconButton(
                          icon: Icon(
                            FeatherIcons.chevronsDown,
                            size: 30.0,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          '24 Compartidos',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
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
