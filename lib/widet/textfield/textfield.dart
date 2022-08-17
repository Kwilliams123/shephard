import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  String label;
  TextEditingController controller;

  CustomTextField(this.hint, this.controller);

  @override
  Widget build(BuildContext context) {
    final textField = TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );

    return textField;
  }
}
