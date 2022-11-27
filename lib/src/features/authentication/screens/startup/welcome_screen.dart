import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/image_strings.dart';

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
                      onPressed: () {}, child: Text("Sign In".toUpperCase())),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Sign Up".toUpperCase())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
