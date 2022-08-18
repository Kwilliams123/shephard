import 'package:flutter/material.dart';
import 'package:shephard/widet/content/header.dart';
import 'package:shephard/widet/textfield/textfield.dart';

class PersonalDetailsForm extends StatefulWidget {
  @override
  _PersonalDetailsFormState createState() => _PersonalDetailsFormState();
}

class _PersonalDetailsFormState extends State<PersonalDetailsForm> {
  @override
  Widget build(BuildContext context) {
    final socialText = Header('Personal Details');

    final nameText = CustomTextField('Enter your name', 'Name', null);
    final dobText = CustomTextField('DD-MM-YYYY', 'Date of Birth', null);
    final locationText =
        CustomTextField('Enter your location', 'Location', null);
    final digitalText =
        CustomTextField('Enter your digital address', 'Digital Address', null);
    final cardText =
        CustomTextField('Enter your Ghana card number', 'Ghana Card', null);
    final phoneText =
        CustomTextField('Enter your phone number', 'Phone Number', null);

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
                socialText,
                Divider(),
                const SizedBox(
                  height: 25,
                ),
                nameText,
                const SizedBox(
                  height: 25,
                ),
                dobText,
                const SizedBox(
                  height: 25,
                ),
                locationText,
                const SizedBox(
                  height: 25,
                ),
                digitalText,
                const SizedBox(
                  height: 25,
                ),
                cardText,
                const SizedBox(
                  height: 25,
                ),
                phoneText,
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
