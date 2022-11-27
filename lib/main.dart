import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kingsevent/src/features/authentication/models/current_user.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/wrapper.dart';
import 'package:kingsevent/src/services/authentication_service.dart';
import 'package:kingsevent/src/utils/theme/theme.dart';
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
      child: MaterialApp(
        theme: AppThemeUtility.lightTheme,
        darkTheme: AppThemeUtility.darkTheme,
        themeMode: ThemeMode.system,
        home: const Wrapper(),
      ),
    );
  }
}
