import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_turner/src/screens/login.dart';
import 'package:page_turner/src/widgets/default_scaffold.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'lib/assets/images/logo.png',
          width: 150,
          height: 145,
        ),
        const Text(
          '“Where Every Book Has a Story to Tell”',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        )
      ],
    )));
  }
}
