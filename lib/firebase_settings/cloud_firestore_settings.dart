import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vita_nova/firebase_settings/authentication_settings.dart';

class CloudFirestoreSettings {
  final _dataBase = Firestore.instance;

  void createNewUserAccount(
      {String correoUsuario,
      String nombreUsuario,
      String apellidoUsuario}) async {
    var user = await AuthenticationSettings().getCurrentUser();
    _dataBase.collection('users').document(user.uid).setData({
      'nombre': nombreUsuario,
      'apellido': apellidoUsuario,
      'correo': correoUsuario,
      'amigos': 0,
    });
  }

  void updateNewUserAccountInfo(String descripcionUsuario) async {
    var user = await AuthenticationSettings().getCurrentUser();
    _dataBase.collection('users').document(user.uid).updateData({
      'descripcion': descripcionUsuario,
    });
  }

  Future<String> getUserDataName() async {
    var user = await AuthenticationSettings().getCurrentUser();
    String userData;
    userData = await _dataBase
        .collection('users')
        .document(user.uid)
        .get()
        .then((value) => value.data['nombre']);

    return userData;
  }

  Future<String> getUserDataLastName() async {
    var user = await AuthenticationSettings().getCurrentUser();
    String userData;
    userData = await _dataBase
        .collection('users')
        .document(user.uid)
        .get()
        .then((value) => value.data['apellido']);

    return userData;
  }

  Future<int> getUserDataFriends() async {
    var user = await AuthenticationSettings().getCurrentUser();
    int userData;
    userData = await _dataBase
        .collection('users')
        .document(user.uid)
        .get()
        .then((value) => value.data['amigos']);

    return userData;
  }
}
