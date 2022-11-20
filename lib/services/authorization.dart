import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future SignInAnon() async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      User? user = userCredential.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
