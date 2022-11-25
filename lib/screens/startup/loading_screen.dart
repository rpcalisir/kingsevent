import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kingsevent/models/current_user.dart';
import 'package:kingsevent/screens/dashboard/dashboard_screen.dart';
import 'package:kingsevent/screens/startup/authenticate_screen.dart';
import 'package:provider/provider.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<CurrentUser?>(context);

    if (kDebugMode) print(currentUser);

    if (currentUser == null) {
      return const AuthenticateScreen();
    } else {
      return DashboardScreen();
    }
  }
}
