import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            Image.asset(
              'assets/nlogo.png',
              width: 160,
              ),
           Container(
            width: 300,
            height: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              'assets/Rectangle 1.png',
              fit: BoxFit.contain,
              ),
           ),
           const SizedBox(height: 20), 
           InkWell(
            onTap: () {},
             child: Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                color: buttonClr,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 26,
                  ),
                  ),
              ),
             ),
           ),
          const SizedBox(height: 20), 
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                const Text(
                  "Don't Have Account ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    ),
                )
              ],
            ),
          )
          ],
        ),
    ),
    );
  }
}