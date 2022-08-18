import 'package:flutter/material.dart';
import 'package:shephard/widet/buttons/stack_buttons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.grey,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 30,
          right: 20,
          left: 20,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: StackButton(),
        ),
      ),
    ));
  }
}
