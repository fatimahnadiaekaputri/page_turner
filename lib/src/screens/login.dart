import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_turner/src/screens/register.dart';
import 'package:page_turner/src/widgets/button.dart';
import 'package:page_turner/src/widgets/default_scaffold.dart';
import 'package:page_turner/src/widgets/text_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;

    return DefaultScaffold(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Image.asset(
            'lib/assets/images/girl.png',
            width: 188,
            height: 200,
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFF4b4376),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        const Text('Welcome Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF7F7F7),
                              fontSize: 24,
                            )),
                        const SizedBox(height: 10),
                        TextForm(
                            label: 'Email',
                            hintText: 'Masukkan email',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan email';
                              }
                              return null;
                            }),
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
                        const SizedBox(height: 20),
                        const Button(
                          buttonText: 'Login',
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                              text: 'Do not have account? ',
                              style: const TextStyle(color: Color(0xFFF7F7F7)),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Register',
                                    style: const TextStyle(
                                        color: Color(0xFFF7F7F7),
                                        fontWeight: FontWeight.w800,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Register()));
                                      })
                              ]),
                        )
                      ],
                    )),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
