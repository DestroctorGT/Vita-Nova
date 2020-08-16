import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/user_button.dart';

class NuevaCuentaSubirFotoPerfil extends StatefulWidget {
  @override
  _NuevaCuentaSubirFotoPerfilState createState() =>
      _NuevaCuentaSubirFotoPerfilState();
}

class _NuevaCuentaSubirFotoPerfilState
    extends State<NuevaCuentaSubirFotoPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          UserButton(
            buttonText: 'Subir Foto',
            buttonPadding: EdgeInsets.all(18.0),
            colorButton: kColorButtonDefaultIndigoAccent,
            fontSize: 18.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 80.0,
          ),
          UserButton(
            buttonText: 'Siguiente',
            buttonPadding: EdgeInsets.all(20.0),
            colorButton: kColorButtonDefaultIndigoAccent,
            fontSize: 22.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
