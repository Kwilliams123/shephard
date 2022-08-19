import 'package:flutter/material.dart';
import 'package:shephard/widet/content/custom_dropdown.dart';
import 'package:shephard/widet/content/header.dart';

class ChurchDetailsForm extends StatefulWidget {
  @override
  State<ChurchDetailsForm> createState() => _ChurchDetailsFormState();
}

class _ChurchDetailsFormState extends State<ChurchDetailsForm> {
  @override
  Widget build(BuildContext context) {
    final churchText = Header('Church Details');
    String selectedItem = 'Elder';

    List<String> churchStatus = [
      'Pastor',
      'Elder',
      'Deacon',
      'Deaconess',
      'Brother',
      'Sister',
    ];

    final churchDropDown = CustomDropDown(
      items: churchStatus,
      selectedItem: selectedItem,
      hint: 'Select your status',
      label: 'Select your status',
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              churchText,
              SizedBox(
                height: 30,
              ),
              churchDropDown,
            ],
          ),
        ),
      ),
    );
  }
}
