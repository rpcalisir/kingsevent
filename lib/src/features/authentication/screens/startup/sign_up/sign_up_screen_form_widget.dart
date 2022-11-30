import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kingsevent/src/constants/sizes.dart';
import 'package:kingsevent/src/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class SignUpScreenFormWidget extends StatefulWidget {
  const SignUpScreenFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreenFormWidget> createState() => _SignUpScreenFormWidgetState();
}

class _SignUpScreenFormWidgetState extends State<SignUpScreenFormWidget> {
  final TextEditingController _birthDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: rFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(rFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(rEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(rPassword),
                prefixIcon: Icon(Icons.fingerprint_outlined),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              controller: _birthDateController,
              decoration: const InputDecoration(
                label: Text(rBirthDate),
                prefixIcon: Icon(Icons.date_range_rounded),
              ),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext builder) {
                      return SizedBox(
                        height:
                            MediaQuery.of(context).copyWith().size.height / 3,
                        child: CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime pickedDate) {
                            setState(() {
                              _birthDateController.text =
                                  DateFormat('MM-dd-yyyy').format(pickedDate);
                            });
                          },
                          use24hFormat: true,
                          mode: CupertinoDatePickerMode.date,
                        ),
                      );
                    });
              },
            ),
            const SizedBox(height: rFormHeight - 20),
            InternationalPhoneNumberInput(
              inputDecoration: const InputDecoration(
                label: Text(rPhoneNumber),
              ),
              errorMessage: rInvalidPhoneNumber,
              keyboardType: TextInputType.phone,
              onInputChanged: null,
              hintText: rPhoneNumber,
              maxLength: 15,
              formatInput: true,
              countries: const [
                "TR",
                "DE",
              ],
              selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  setSelectorButtonAsPrefixIcon: true,
                  leadingPadding: 20,
                  useEmoji: true),
            ),
            const SizedBox(height: rFormHeight - 20),
            const SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: null,
                child: Text(rSignUp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
