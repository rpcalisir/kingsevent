import 'package:flutter/material.dart';
import 'package:kingsevent/src/common_widgets/form/form_header_widget.dart';
import 'package:kingsevent/src/constants/icon_strings.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(rDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: rFormHeight - 20),
                const FormHeaderWidget(image: forgetPasswordIcon, title: rforgetPassword, subTitle: rforgetPasswordSubTitle, 
                crossAxisAlignment: CrossAxisAlignment.center, heightBetween: 30.0, textAlign: TextAlign.center),
                const SizedBox(height: rFormHeight - 20),
                Form(child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(rEmail), 
                      hintText: rEmail,
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                      ),
                const SizedBox(height: rFormHeight - 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                    ), 
                    child: const Text(rNext)),
                ),
                ],),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}