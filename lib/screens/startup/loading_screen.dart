import 'package:flutter/material.dart';
import 'package:kingsevent/screens/dashboard/dashboard_screen.dart';
import 'package:kingsevent/screens/startup/authenticate_screen.dart';
import 'package:kingsevent/screens/startup/sign_in_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthenticateScreen();
  }
}
