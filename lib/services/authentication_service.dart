import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:kingsevent/models/current_user.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//Create current user object based on FirebaseUser
  CurrentUser? _currentUserFromFirebaseUser(User? user) {
    return user != null ? CurrentUser(uid: user.uid) : null;
  }

//auth change user stream, this stream will be set to listen auth changes.
//whenever an auth change occurs, we get back a value in the stream,
//when the user signs in, user data will be returned,
//when the user signs out, null will be returned.
  Stream<CurrentUser?> get user {
    return _firebaseAuth
        .authStateChanges()
        .map((User? user) => _currentUserFromFirebaseUser(user));
  }

  Future signInAnon() async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      User? user = userCredential.user;
      return _currentUserFromFirebaseUser(user);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      return _currentUserFromFirebaseUser(user);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future signoutCurrentUser() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
