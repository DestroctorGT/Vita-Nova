import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestoreSettings {
  final _dataBase = Firestore.instance;

  void createNewUserAccount(
      {String correoUsuario,
      String nombreUsuario,
      String apellidoUsuario}) async {
    await _dataBase.collection('users').document(correoUsuario).setData({
      'nombre': nombreUsuario,
      'apellido': apellidoUsuario,
      'correo': correoUsuario,
    });
  }
}
