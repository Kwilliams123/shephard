import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  String label;
  TextEditingController controller;

  CustomTextField(this.hint, this.label, this.controller);

  @override
  Widget build(BuildContext context) {
    final textField = TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hint,
      ),
    );

    final container = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 6,
          ),
          textField,
        ],
      ),
    );

    return container;
  }
}
