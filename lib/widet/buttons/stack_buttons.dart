import 'package:flutter/material.dart';

class StackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final register = Positioned(
      left: 0,
      child: Container(
        width: size.width * 0.48,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        child: const Text(
          'Register',
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );

    final signup = Positioned(
      right: 0,
      child: Container(
        width: size.width * 0.54,
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          right: 30,
          left: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.right,
        ),
      ),
    );

    final parent = Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      height: 60,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          signup,
          register,
        ],
      ),
    );

    return parent;
  }
}
