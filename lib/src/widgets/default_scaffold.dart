import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
                width: screenWidth,
                height: screenHeight,
                color: const Color(0xFFF7F7F7)),
            SafeArea(child: child ?? const SizedBox())
          ],
        ));
  }
}
