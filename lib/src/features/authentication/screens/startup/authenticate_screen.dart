import 'package:flutter/material.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_in_screen.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_up_with_email.dart';

class AuthenticateScreen extends StatefulWidget {
  const AuthenticateScreen({super.key});

  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInScreen(toggleView: toggleView);
    } else {
      return SignUpWithEmailScreen(toggleView: toggleView);
    }
  }
}
