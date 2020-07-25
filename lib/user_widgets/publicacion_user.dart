import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class PublicacionUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Card(
        color: Colors.black26,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Nombre del usuario',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
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
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
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
    );
  }
}
