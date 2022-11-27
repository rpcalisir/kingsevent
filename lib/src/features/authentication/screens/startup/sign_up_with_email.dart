import 'package:flutter/material.dart';
import 'package:kingsevent/src/services/authentication_service.dart';
import 'package:kingsevent/src/shared/loading.dart';

class SignUpWithEmailScreen extends StatefulWidget {
  final Function toggleView;
  const SignUpWithEmailScreen({super.key, required this.toggleView});

  @override
  State<SignUpWithEmailScreen> createState() => _SignUpWithEmailScreenState();
}

class _SignUpWithEmailScreenState extends State<SignUpWithEmailScreen> {
  final AuthService _authService = AuthService();

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

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
              title: const Text('Sign up to KINGS EVENT'),
              actions: <Widget>[
                TextButton.icon(
                    onPressed: () {
                      widget.toggleView();
                    },
                    icon: const Icon(Icons.person),
                    label: const Text('Sign In')),
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
                        validator: (userInput) => userInput!.length < 6
                            ? 'Enter a password +6 chars long!'
                            : null,
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
                              .signUpWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              error = 'Check user input!';
                              isLoading = false;
                            });
                          }
                        }
                      },
                      child: const Text(
                        'Sign up',
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
