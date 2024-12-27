import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String obscuringCharacter;

  const TextForm({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.obscuringCharacter = '*',
  });

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  late bool _isObscured;
  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: const TextStyle(
                color: Color(0xFFF7F7F7),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 2),
            TextFormField(
              controller: widget.controller,
              validator: widget.validator,
              keyboardType: widget.keyboardType,
              obscureText: _isObscured,
              obscuringCharacter: widget.obscuringCharacter,
              decoration: InputDecoration(
                labelText: widget.hintText,
                labelStyle: TextStyle(
                  // color: Color(0xFFF7F7F7),
                  color: Colors.black.withOpacity(0.5),
                ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
                filled: true,
                fillColor: const Color(0xFFF7F7F7),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: widget.obscureText
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(
                          _isObscured ? Icons.visibility_off : Icons.visibility,
                          color: Colors.black.withOpacity(0.5),
                        ))
                    : null,
              ),
            )
          ],
        ));
  }
}
