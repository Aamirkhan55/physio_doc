import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/login.dart';
import 'package:physio_doc/view/auth/signUp/sign_up.dart';
import 'package:physio_doc/view/welcome/widgets/wel_Image.dart';
import 'package:physio_doc/widgets/custom_button.dart';
import 'package:physio_doc/widgets/custom_title.dart';

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
            const CustomTitle(
              title: 'Welcome to',
              ),
            const WelComImage(),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              title: 'Login',
              color: buttonClr,
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
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                    },
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

