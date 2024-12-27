import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_turner/src/screens/login.dart';
import 'package:page_turner/src/widgets/button.dart';
import 'package:page_turner/src/widgets/default_scaffold.dart';
import 'package:page_turner/src/widgets/text_form.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                'lib/assets/images/boy.png',
                width: 127.4,
                height: 131.6,
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF4b4376),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      const Text(
                        'Lets Get Started!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF7F7F7),
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextForm(
                        label: 'Nama',
                        hintText: 'Masukkan nama',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan nama';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextForm(
                        label: 'Email',
                        hintText: 'Masukkan email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextForm(
                        label: 'Password',
                        hintText: 'Masukkan password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan password';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),
                      TextForm(
                        label: 'Confirm Password',
                        hintText: 'Masukkan password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan password';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      const Button(
                        buttonText: 'Register',
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Already have account? ',
                          style: const TextStyle(color: Color(0xFFF7F7F7)),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                color: Color(0xFFF7F7F7),
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
