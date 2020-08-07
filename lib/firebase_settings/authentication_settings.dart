import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationSettings {
  final _auth = FirebaseAuth.instance;

  Future<AuthResult> createNewAccount({String correo, String contra}) {
    return _auth.createUserWithEmailAndPassword(
        email: correo, password: contra);
  }

  Future<AuthResult> signIn({String correo, String contra}) {
    return _auth.signInWithEmailAndPassword(email: correo, password: contra);
  }

  Future<void> signOut() {
    return _auth.signOut();
  }

  Future<FirebaseUser> getCurrentUser() {
    return _auth.currentUser();
  }
}
