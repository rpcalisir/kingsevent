import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kingsevent/services/authentication_service.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _authService = AuthService();

  var email = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[40],
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        elevation: 0.0,
        title: const Text('Sign in to KINGS EVENT'),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            child: Column(children: <Widget>[
              const SizedBox(height: 20.0),
              TextFormField(
                  autofocus: true,
                  onChanged: (userInput) {
                    setState(() => email = userInput);
                  }),
              TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () async {
                  dynamic result =
                      _authService.signInWithEmailAndPassword(email, password);
                  print(result);
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          )),
    );
  }
}
