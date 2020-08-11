import 'package:flutter/material.dart';
import 'package:vita_nova/const.dart';
import 'package:vita_nova/firebase_settings/cloud_firestore_settings.dart';

String userName;
String userLastName;
int userFriendCount;

class TuPerfilTusPublicaciones extends StatefulWidget {
  @override
  _TuPerfilTusPublicacionesState createState() =>
      _TuPerfilTusPublicacionesState();
}

class _TuPerfilTusPublicacionesState extends State<TuPerfilTusPublicaciones> {
  void getDataName() async {
    try {
      final userNameTemporal = await CloudFirestoreSettings().getUserDataName();
      if (userNameTemporal != null) {
        userName = userNameTemporal;
      }
    } catch (e) {
      print(e);
    }
  }

  void getDataLastName() async {
    try {
      final userLastNameTemporal =
          await CloudFirestoreSettings().getUserDataLastName();
      if (userLastNameTemporal != null) {
        userLastName = userLastNameTemporal;
      }
    } catch (e) {
      print(e);
    }
  }

  void getDataFriends() async {
    try {
      final userFriends = await CloudFirestoreSettings().getUserDataFriends();
      if (userFriends != null) {
        userFriendCount = userFriends;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getDataName();
    getDataLastName();
    getDataFriends();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Text(
              userName != null && userLastName != null
                  ? userName + ' ' + userLastName
                  : 'Error en los datos, intente de nuevo',
              style: kNormalTextFontSize,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                userFriendCount < 1 || userFriendCount != null
                    ? 'No tienes amigos agregados :('
                    : 'Tienes ${userFriendCount.toString()} amigos',
                style: kNormalTextFontSize,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 55.0,
        ),
        Center(
          child: Text(
            'Descripción pequeña del usuario',
            style: kNormalTextFontSize,
          ),
        ),
        SizedBox(
          height: 45.0,
        ),
      ],
    );
  }
}
