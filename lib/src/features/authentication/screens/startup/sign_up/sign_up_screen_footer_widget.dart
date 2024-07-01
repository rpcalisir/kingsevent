import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/icon_strings.dart';
import 'package:kingsevent/src/constants/text_strings.dart';

class SignUpScreenFooterWidget extends StatelessWidget {
  const SignUpScreenFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: null,
            icon: const Image(
              image: AssetImage(googleSignInIcon),
              width: 20.0,
            ),
            label: const Text(rSignInWithGoogle),
          ),
        ),
      ],
    );
  }
}
