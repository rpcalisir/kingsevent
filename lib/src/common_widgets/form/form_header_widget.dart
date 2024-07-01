import 'package:flutter/material.dart';
import 'package:kingsevent/src/constants/image_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Image(
            image: const AssetImage(appLogo),
            height: size.height * 0.1,
          ),
        ),
        const Text('KINGS EVENT'),
      ],
    );
  }
}
