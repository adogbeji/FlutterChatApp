import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.labelText, required this.hintText, required this.validationRegEx});

  final String labelText;
  final String hintText;
  final RegExp validationRegEx;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value != null && validationRegEx.hasMatch(value)) {
          return null;
        }
        return 'Enter a valid ${labelText.toLowerCase()}!';
      },
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}