import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_in/forget_password/forget_password_email/forget_password_email_screen.dart';
import 'package:kingsevent/src/features/authentication/screens/startup/sign_in/forget_password/forget_password_options/forget_password_button_widget.dart';
import 'package:get/get.dart';

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

            //FORGET PASSWORD BUTTON
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  buildShowModalBottomSheet(context);
                },
                child: const Text(rforgetPassword),
              ),
            ),

            //SIGN IN BUTTON
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



  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                  context: context, 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  builder: (context) => Container(
                    padding: const EdgeInsets.all(rDefaultSize),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(rforgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
                        Text(rforgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: rFormHeight - 20),

                        ForgetPasswordButtonWidget(
                          btnIcon: Icons.mail_outline_rounded,
                          title: rEmail,
                          subTitle: rResetViaEmail,
                          onTap: () {
                            Navigator.pop(context);
                            Get.to(() => const ForgetPasswordEmailScreen());
                          },
                        ),

                      ],
                    ),
                  ),
                );
  }
}

