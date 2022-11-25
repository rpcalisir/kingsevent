import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kingsevent/services/authentication_service.dart';

class SignUpWithEmailScreen extends StatefulWidget {
  const SignUpWithEmailScreen({super.key});

  @override
  State<SignUpWithEmailScreen> createState() => _SignUpWithEmailScreenState();
}

class _SignUpWithEmailScreenState extends State<SignUpWithEmailScreen> {
  final AuthService _authService = AuthService();

  final _formKey = GlobalKey<FormState>();

  var email = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[40],
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        elevation: 0.0,
        title: const Text('Sign up to KINGS EVENT'),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            key: _formKey,
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
                  log(result.Email);
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          )),
    );
  }
}
