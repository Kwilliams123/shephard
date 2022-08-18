import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String text;
  double size;

  Header(this.text, {this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: size ?? 18,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
