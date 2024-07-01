import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: rFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: rEmail,
                hintText: rEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: rPassword,
                  hintText: rPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
            ),
            const SizedBox(height: rFormHeight - 20),
            const Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: null,
                child: Text(rforgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: null, child: Text(rSignIn.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}
