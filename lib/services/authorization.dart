import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kingsevent/models/CurrentUser.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  CurrentUser? _currentUserFromFirebaseUser(User user) {
    return user != null ? CurrentUser(uid: user.uid) : null;
  }

  Future SignInAnon() async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      User? user = userCredential.user;
      return _currentUserFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
