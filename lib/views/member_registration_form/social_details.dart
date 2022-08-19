import 'package:flutter/material.dart';
import 'package:shephard/widet/content/custom_dropdown.dart';
import 'package:shephard/widet/content/header.dart';
import 'package:shephard/widet/textfield/textfield.dart';

class SocialDetailsForm extends StatefulWidget {
  @override
  State<SocialDetailsForm> createState() => _SocialDetailsFormState();
}

class _SocialDetailsFormState extends State<SocialDetailsForm> {
  @override
  Widget build(BuildContext context) {
    String selectedItem = 'Select Education Level';
    TextEditingController controller = TextEditingController();
    List<String> listOfEducationLevels = [
      "Select Education Level",
      "MSLC",
      "O'Level",
      "A'Level",
      "JHS",
      "SHS",
      "Diploma",
      "First Degree",
      "Masters",
      "MPHIL",
      "DR",
      "PHD",
      "None",
      "Other",
    ];
    final occupationText =
        CustomTextField('Enter your occupation', 'Occupation', controller);

    final educationalLevel = CustomDropDown(
      items: listOfEducationLevels,
      selectedItem: selectedItem,
      hint: 'Select level of education',
      label: 'Education Level',
    );

    final title = Header(
      'Social Details',
    );

    const educationText = Text(
      'Education Level',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      textAlign: TextAlign.left,
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              top: 40,
              right: 20,
              left: 20,
              bottom: 20,
            ),
            child: Column(
              children: [
                title,
                const SizedBox(
                  height: 25,
                ),
                occupationText,
                const SizedBox(
                  height: 25,
                ),
                educationalLevel,
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
