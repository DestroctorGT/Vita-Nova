import 'package:flutter/material.dart';
import 'package:vita_nova/screens/pagina_de_inicio.dart';
import 'package:vita_nova/user_widgets/user_button.dart';
import 'package:vita_nova/user_widgets/userinputwidget.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/firebase_settings/cloud_firestore_settings.dart';
import 'package:get/get.dart';

class NuevaCuentaAgregarDescripcion extends StatefulWidget {
  final String id = 'Nueva Cuenta Agregar Descripcion';
  @override
  _NuevaCuentaAgregarDescripcionState createState() =>
      _NuevaCuentaAgregarDescripcionState();
}

class _NuevaCuentaAgregarDescripcionState
    extends State<NuevaCuentaAgregarDescripcion> {
  String descripcion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Form(
            child: Padding(
              padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 35.0),
              child: UserInputWidget(
                inputTextName: 'Agrega una descripcion a tu perfil',
                obscureTextCheck: false,
                onChanged: (value) {
                  descripcion = value;
                },
              ),
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
          UserButton(
            buttonText: 'Siguiente',
            colorButton: kColorButtonDefaultIndigoAccent,
            fontSize: 20.0,
            buttonPadding: EdgeInsets.all(20.0),
            onPressed: () async {
              try {
                CloudFirestoreSettings().updateNewUserAccountInfo(descripcion);
                Get.offAllNamed(PaginaDeInicio().id);
              } catch (e) {
                print(e);
              }
            },
          ),
        ],
      ),
    );
  }
}
