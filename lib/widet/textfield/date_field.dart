import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class CustomDateField extends StatelessWidget {
  DateTime selectedDate;
  String title;

  CustomDateField({this.title, this.selectedDate});

  @override
  Widget build(BuildContext context) {
    final titleText = Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );

    final dateField = DateTimeFormField(
      decoration: const InputDecoration(
        hintStyle: TextStyle(color: Colors.black45),
        errorStyle: TextStyle(color: Colors.redAccent),
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.event_note),
      ),
      mode: DateTimeFieldPickerMode.date,
      autovalidateMode: AutovalidateMode.always,
      onDateSelected: (DateTime value) {
        selectedDate = value;
      },
    );
    return Column(children: [
      dateField,
    ]);
  }
}
