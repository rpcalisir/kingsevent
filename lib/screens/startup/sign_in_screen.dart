import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kingsevent/services/authorization.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        elevation: 0.0,
        title: const Text('Sign in to KINGS EVENT'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: const Text('Sign In'),
          onPressed: () async {
            dynamic result = await _authService.signInAnon();
            if (result == null) {
              log('Error signing in!');
            } else {
              log('Signed in');
              log(result.uid);
            }
          },
        ),
      ),
    );
  }
}
