import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/icon_strings.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';

class SignInFooterWidget extends StatelessWidget {
  const SignInFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(googleSignInIcon),
                width: 20.0,
              ),
              onPressed: null,
              label: const Text(rSignInWithGoogle)),
        ),
        const SizedBox(
          height: rFormHeight - 20,
        ),
        TextButton(
          onPressed: null,
          child: Text.rich(
            TextSpan(
                text: rDontHaveAccount,
                style: Theme.of(context).textTheme.bodySmall,
                children: const [
                  TextSpan(
                    text: rSignUp,
                    style: TextStyle(color: Colors.blue, fontSize: 16.0),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
