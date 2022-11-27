import 'package:flutter/material.dart';
import 'package:kingsevent/src/services/authentication_service.dart';
import 'package:kingsevent/src/shared/loading.dart';

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
            appBar: AppBar(
              elevation: 0.0,
              title: Text(
                'Sign in to KINGS EVENT',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              actions: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    widget.toggleView();
                  },
                  icon: Icon(
                    Icons.person,
                    color: Theme.of(context).backgroundColor,
                    size: 18.0,
                  ),
                  label: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            body: Container(
                color: Colors.white,
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
                    ),
                    const SizedBox(height: 20.0),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/google_sign_in.png')),
                  ]),
                )),
          );
  }
}
