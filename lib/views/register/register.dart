import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    const mainText = Positioned(
      top: 40,
      child: Text(
        'The Church of Pentecost Newtown Assembly Church Data App',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );

    final size = MediaQuery.of(context).size;
    final button = Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: const Text(
        'Register',
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
    );

    final signInText = RichText(
        text: TextSpan(children: [
      const TextSpan(
        text: 'already have an account ? ',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),
      TextSpan(
        text: 'Sign In',
        style: const TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 16,
        ),
        recognizer: TapGestureRecognizer()..onTap = () {},
      ),
    ]));

    final bottomContent = Positioned(
      bottom: 20,
      child: Column(
        children: [
          button,
          SizedBox(
            height: 20,
          ),
          signInText,
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            top: 40,
            right: 20,
            left: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              mainText,
              const SizedBox(
                height: 200,
              ),
              bottomContent,
            ],
          ),
        ),
      ),
    );
  }
}
