import 'package:flutter/material.dart';
import 'package:shephard/widet/content/custom_dropdown.dart';
import 'package:shephard/widet/content/header.dart';
import 'package:shephard/widet/content/yes_or_no_option.dart';
import 'package:shephard/widet/textfield/date_field.dart';

class ChurchDetailsForm extends StatefulWidget {
  @override
  State<ChurchDetailsForm> createState() => _ChurchDetailsFormState();
}

class _ChurchDetailsFormState extends State<ChurchDetailsForm> {
  @override
  Widget build(BuildContext context) {
    final churchText = Header('Church Details');
    String hasBeenBaptized;
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

    final waterBaptismOptions = YesOrNoOption(
      'Have you been baptized in water ?',
      hasBeenBaptized,
    );

    var now = DateTime.now();

    final baptismDate =
        CustomDateField(title: 'Baptism Date', selectedDate: now);

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
              const SizedBox(
                height: 30,
              ),
              churchDropDown,
              const SizedBox(
                height: 25,
              ),
              waterBaptismOptions,
              const SizedBox(
                height: 20,
              ),
              baptismDate,
            ],
          ),
        ),
      ),
    );
  }
}
