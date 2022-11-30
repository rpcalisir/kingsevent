import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/image_strings.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_in/sign_in_screen.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_up/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var heightOfScreen = mediaQuery.size.height;
    var brightnessOfScreen = mediaQuery.platformBrightness;
    var isDarkMode = brightnessOfScreen == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black87 : Colors.yellow,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Image(
                image: const AssetImage(welcomeImage),
                height: heightOfScreen * 0.4,
              ),
            ),
            Text(
              'KINGS EVENT CLUB',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                      child: Text("Sign In".toUpperCase())),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: Text("Sign Up".toUpperCase())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
