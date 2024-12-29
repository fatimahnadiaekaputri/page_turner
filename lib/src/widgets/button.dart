import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.buttonText,
      this.onTap,
      this.buttonColor,
      this.textColor,
      this.height,
      this.width,
      this.fontSize,
      this.fontWeight});
  final String? buttonText;
  final VoidCallback? onTap;
  final Color? buttonColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        width: width ?? 190,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: buttonColor ?? const Color(0xFFE8BCB9),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 5,
                offset: const Offset(0, 2),
              )
            ]),
        child: Center(
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
