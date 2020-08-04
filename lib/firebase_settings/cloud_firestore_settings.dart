import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestoreSettings {
  final dataBase = Firestore.instance;

  String nombre;
  String apellido;

  void createNewUserAccount(String correoUsuario, String nombreUsuario,
      String apellidoUsuario) async {
    await dataBase.collection('users').document(correoUsuario).setData({
      'nombre': nombreUsuario,
      'apellido': apellidoUsuario,
      'correo': correoUsuario,
    });
  }
}
