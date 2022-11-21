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
        title: Text('Sign in to KINGS EVENT'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: () async {
            dynamic result = await _authService.SignInAnon();
            if (result == null) {
              print('Error signing in!');
            } else {
              print('Signed in');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
