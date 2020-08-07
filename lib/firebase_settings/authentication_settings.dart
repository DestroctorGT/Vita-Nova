import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationSettings {
  final _auth = FirebaseAuth.instance;

  Future<AuthResult> createNewAccount({String correo, String contra}) {
    return _auth.createUserWithEmailAndPassword(
        email: correo, password: contra);
  }
}
