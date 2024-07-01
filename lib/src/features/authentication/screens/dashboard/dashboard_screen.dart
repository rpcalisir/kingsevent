import 'package:flutter/material.dart';
import 'package:kingsevent/src/services/authentication_service.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'KINGS EVENT',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
        elevation: 0.0,
        actions: [
          TextButton.icon(
            icon: const Icon(Icons.person),
            label: const Text('logout'),
            onPressed: () async {
              _authService.signoutCurrentUser();
            },
          )
        ],
      ),
    );
  }
}
