import 'package:flutter/material.dart';

class WelComImage extends StatelessWidget {
  const WelComImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 420,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        'assets/Rectangle 1.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
