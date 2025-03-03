import 'package:flutter/material.dart';
import 'package:kingsevent/src/common_widgets/form/form_header_widget.dart';
import 'package:kingsevent/src/constants/icon_strings.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_in/sign_in_screen_form_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(rSignIn),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(rDefaultSize),
              child: const Column(
                children: [
                  FormHeaderWidget(image: signInIcon, title: rAppTitle, subTitle: rSignInSubTitle, 
                  crossAxisAlignment: CrossAxisAlignment.center, heightBetween: 30.0, textAlign: TextAlign.center),
                  SignInForm(),
                ],
              )),
        ),
      ),
    );
  }
}
