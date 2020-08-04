import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/user_widgets/userinputwidget.dart';
import 'package:get/get.dart';
import 'package:vita_nova/firebase_settings/authentication_settings.dart';
import 'package:vita_nova/firebase_settings/cloud_firestore_settings.dart';

class Registrarse extends StatefulWidget {
  @override
  _RegistrarseState createState() => _RegistrarseState();
}

class _RegistrarseState extends State<Registrarse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                'images/Victori Icon.png',
                scale: 2.0,
              ),
              Center(
                child: Text(
                  'Vita Nova',
                  style: kVitaNovaTextStyle,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 10.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Nombre',
                obscureTextCheck: false,
                onChanged: (value) {
                  CloudFirestoreSettings().nombre = value;
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 45.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Apellido',
                obscureTextCheck: false,
                onChanged: (value) {
                  CloudFirestoreSettings().apellido = value;
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, top: 45.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Correo',
                inputType: TextInputType.emailAddress,
                obscureTextCheck: false,
                onChanged: (value) {
                  AuthenticationSettings().correo = value;
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 45.0, right: 45.0, top: 45.0, bottom: 45.0),
            child: Form(
              child: UserInputWidget(
                inputTextName: 'Contraseña',
                obscureTextCheck: true,
                onChanged: (value) {
                  AuthenticationSettings().contra = value;
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 45.0, right: 45.0, bottom: 22.0),
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              color: kColorButtonDefaultIndigoAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Crear cuenta',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () async {
                try {
                  final newUser = await AuthenticationSettings()
                      .auth
                      .createUserWithEmailAndPassword(
                          email: AuthenticationSettings().correo,
                          password: AuthenticationSettings().contra);
                  if (newUser != null) {
                    Get.toNamed(kTuPerfil);
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
