import 'package:flutter/material.dart';
import 'package:kingsevent/src/common_widgets/form/form_header_widget.dart';
import 'package:kingsevent/src/constants/icon_strings.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_up/sign_up_screen_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(rSignUp),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(rDefaultSize),
          child: const Column(
            children: [
              FormHeaderWidget(image: signUpIcon, title: rAppTitle, subTitle: rSignUpSubTitle, 
              crossAxisAlignment: CrossAxisAlignment.center, heightBetween: 30.0, textAlign: TextAlign.center),
              SignUpScreenFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
