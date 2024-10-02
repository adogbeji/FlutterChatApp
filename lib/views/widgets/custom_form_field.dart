import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.labelText, required this.hintText});

  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}