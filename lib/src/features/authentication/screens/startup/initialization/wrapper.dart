import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kingsevent/src/features/authentication/models/current_user.dart';
import 'package:kingsevent/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/initialization/welcome_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<CurrentUser?>(context);

    if (kDebugMode) print(currentUser);

    if (currentUser == null) {
      return const WelcomeScreen();
    } else {
      return DashboardScreen();
    }
  }
}
