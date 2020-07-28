import 'package:flutter/material.dart';
import 'package:vita_nova/user_widgets/user_top_icon.dart';
import 'package:vita_nova/user_widgets/publicacion_user.dart';

class PaginaDeInicioExplorar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserTopIcon(),
        PublicacionUser(),
      ],
    );
  }
}
