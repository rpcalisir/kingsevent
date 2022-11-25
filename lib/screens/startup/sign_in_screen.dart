import 'package:flutter/material.dart';
import 'package:kingsevent/services/authentication_service.dart';
import 'package:kingsevent/shared/loading.dart';

class SignInScreen extends StatefulWidget {
  final Function toggleView;
  const SignInScreen({super.key, required this.toggleView});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _authService = AuthService();

  String email = '';
  String password = '';
  String error = '';

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Loading()
        : Scaffold(
            backgroundColor: Colors.yellow[40],
            appBar: AppBar(
              backgroundColor: Colors.red[600],
              elevation: 0.0,
              title: const Text('Sign in to KINGS EVENT'),
              actions: <Widget>[
                TextButton.icon(
                    onPressed: () {
                      widget.toggleView();
                    },
                    icon: const Icon(Icons.person),
                    label: const Text('Sign Up')),
              ],
            ),
            body: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    const SizedBox(height: 20.0),
                    TextFormField(
                        decoration: const InputDecoration(hintText: 'Email'),
                        validator: (userInput) =>
                            userInput!.isEmpty ? 'Enter an email!' : null,
                        autofocus: true,
                        onChanged: (userInput) {
                          setState(() => email = userInput);
                        }),
                    TextFormField(
                        decoration: const InputDecoration(hintText: 'Password'),
                        validator: (userInput) =>
                            userInput!.isEmpty ? 'Enter an password!' : null,
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        }),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            isLoading = true;
                          });
                          dynamic result = await _authService
                              .signInWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              error = 'Check user input!';
                              isLoading = false;
                            });
                          }
                        }
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      error,
                      style: const TextStyle(color: Colors.red, fontSize: 14.0),
                    )
                  ]),
                )),
          );
  }
}
