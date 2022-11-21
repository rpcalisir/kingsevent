import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:kingsevent/models/current_user.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  CurrentUser _currentUserFromFirebaseUser(User user) {
    return CurrentUser(uid: user.uid);
  }

  Future signInAnon() async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      User? user = userCredential.user;
      return _currentUserFromFirebaseUser(user!);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
