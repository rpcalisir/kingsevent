import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kingsevent/models/current_user.dart';
import 'package:kingsevent/screens/startup/loading_screen.dart';
import 'package:kingsevent/services/authentication_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CurrentUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
        home: LoadingScreen(),
      ),
    );
  }
}
