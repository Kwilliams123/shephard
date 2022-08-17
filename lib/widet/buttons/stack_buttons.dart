import 'package:flutter/material.dart';

class StackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final register = Positioned(
      left: 0,
      child: Container(
        width: size.width * 0.4,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            15,
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
        width: size.width * 0.68,
        padding: EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.center,
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
        borderRadius: BorderRadius.circular(15),
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
